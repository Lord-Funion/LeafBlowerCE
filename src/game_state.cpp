#include "game_state.h"

#include <cstring>

#include "systems.h"

namespace {

constexpr uint8_t CHALLENGE_NO_AUTOBLOWERS = 0;
constexpr uint8_t CHALLENGE_REDUCED_PRODUCTION = 1;
constexpr uint8_t CHALLENGE_PETLESS = 2;
constexpr uint8_t CHALLENGE_NO_PRESTIGE = 3;
constexpr uint8_t CHALLENGE_TRADER_CRUNCH = 4;
constexpr uint8_t CHALLENGE_HALF_PRODUCTION = 5;
bool challenge_active(const GameState &state, uint8_t challenge) {
    return state.challenge_running && state.active_challenge == challenge;
}

} // namespace

static bool bit_get64(uint64_t bits, uint8_t index) {
    return index < 64 && (bits & (1ULL << index)) != 0;
}

static void bit_set64(uint64_t &bits, uint8_t index) {
    if(index < 64) bits |= 1ULL << index;
}

uint32_t game_rand(GameState &state) {
    uint32_t x = state.rng_state;
    if(x == 0) x = 0x6D2B79F5UL;
    x ^= x << 13U;
    x ^= x >> 17U;
    x ^= x << 5U;
    state.rng_state = x;
    return x;
}

void game_new(GameState &state, uint32_t now) {
    std::memset(&state, 0, sizeof(state));
    state.version = GAME_STATE_VERSION;
    state.current_area = 0;
    state.current_tool = 0;
    state.active_challenge = 0xFF;
    state.last_rtc = now;
    state.rng_state = now ^ 0x4C425243UL;
    state.settings_flags = 1U;
    state.ulc_sacrifice_mask = ULC_SACRIFICE_ALL;
    game_unlock_system(state, SYS_TOOLS);
    game_unlock_system(state, SYS_CHALLENGES);
    game_unlock_system(state, SYS_MILESTONES);
    game_unlock_system(state, SYS_DAILY);
    game_unlock_area(state, 0);
    game_unlock_tool(state, 0);
}

bool game_validate(GameState &state) {
    bool valid = state.version == GAME_STATE_VERSION;
    state.version = GAME_STATE_VERSION;
    for(uint8_t i = 0; i < RESOURCE_COUNT; i++) {
        if(!bn_valid(state.resources[i])) {
            state.resources[i] = bn_zero();
            valid = false;
        }
        if(!bn_valid(state.lifetime[i])) {
            state.lifetime[i] = state.resources[i];
            valid = false;
        }
    }
    for(uint8_t i = 0; i < UPGRADE_COUNT; i++) {
        if(state.upgrade_levels[i] > UPGRADE_DEFS[i].max_level) {
            state.upgrade_levels[i] = UPGRADE_DEFS[i].max_level;
            valid = false;
        }
    }
    if(state.current_area >= AREA_COUNT || !game_area_unlocked(state, state.current_area)) {
        state.current_area = 0;
        valid = false;
    }
    if(state.current_tool >= TOOL_COUNT || !game_tool_unlocked(state, state.current_tool)) {
        state.current_tool = 0;
        valid = false;
    }
    if(state.current_pet >= PET_COUNT) state.current_pet = 0;
    if(state.quarkstiges_consecutive > state.quarkstiges_total) {
        state.quarkstiges_consecutive = state.quarkstiges_total;
        valid = false;
    }
    if((state.ulc_sacrifice_mask & static_cast<uint16_t>(~ULC_SACRIFICE_ALL)) != 0 ||
       game_ulc_sacrifice_count(state) < game_ulc_min_sacrifices(state)) {
        state.ulc_sacrifice_mask = ULC_SACRIFICE_ALL;
        valid = false;
    }
    if(state.active_challenge >= CHALLENGE_COUNT) {
        state.active_challenge = 0xFF;
        state.challenge_running = false;
    }
    game_unlock_system(state, SYS_TOOLS);
    game_unlock_system(state, SYS_CHALLENGES);
    game_unlock_system(state, SYS_MILESTONES);
    game_unlock_system(state, SYS_DAILY);
    game_unlock_area(state, 0);
    game_unlock_tool(state, 0);
    return valid;
}

bool game_system_unlocked(const GameState &state, SystemId system) {
    return bit_get64(state.system_unlocks, static_cast<uint8_t>(system));
}

void game_unlock_system(GameState &state, SystemId system) {
    bit_set64(state.system_unlocks, static_cast<uint8_t>(system));
}

bool game_area_unlocked(const GameState &state, uint8_t area) {
    return area < MAX_AREAS && (state.area_unlocks[area >> 3U] & (1U << (area & 7U))) != 0;
}

void game_unlock_area(GameState &state, uint8_t area) {
    if(area < MAX_AREAS) state.area_unlocks[area >> 3U] |= 1U << (area & 7U);
}

bool game_tool_unlocked(const GameState &state, uint8_t tool) {
    return tool < 16 && (state.tool_unlocks & (1U << tool)) != 0;
}

void game_unlock_tool(GameState &state, uint8_t tool) {
    if(tool < 16) state.tool_unlocks |= 1U << tool;
}

bool game_pet_unlocked(const GameState &state, uint8_t pet) {
    return pet < 16 && (state.pet_unlocks & (1U << pet)) != 0;
}

void game_unlock_pet(GameState &state, uint8_t pet) {
    if(pet < 16) state.pet_unlocks |= 1U << pet;
}

void game_add(GameState &state, ResourceId resource, BigNum amount) {
    if(resource >= RESOURCE_COUNT || !bn_valid(amount)) return;
    state.resources[resource] = bn_add(state.resources[resource], amount);
    state.lifetime[resource] = bn_add(state.lifetime[resource], amount);
}

bool game_spend(GameState &state, ResourceId resource, BigNum amount) {
    if(resource >= RESOURCE_COUNT || bn_compare(state.resources[resource], amount) < 0) return false;
    state.resources[resource] = bn_sub(state.resources[resource], amount);
    return true;
}

uint16_t game_effect_level(const GameState &state, UpgradeEffect effect) {
    if(challenge_active(state, CHALLENGE_NO_AUTOBLOWERS) &&
       (effect == EFFECT_ALB_COUNT || effect == EFFECT_ALB_POWER)) return 0;
    uint32_t total = 0;
    for(uint8_t i = 0; i < UPGRADE_COUNT; i++) {
        if(UPGRADE_DEFS[i].effect == effect) total += state.upgrade_levels[i];
    }
    return total > 65535U ? 65535U : static_cast<uint16_t>(total);
}

uint32_t game_effect_permille(const GameState &state, UpgradeEffect effect) {
    uint32_t level = game_effect_level(state, effect);
    uint32_t result = 1000U + level * 100U;
    if(!challenge_active(state, CHALLENGE_PETLESS) &&
       game_pet_unlocked(state, state.current_pet) && PET_DEFS[state.current_pet].bonus == effect) {
        result = static_cast<uint32_t>((static_cast<uint64_t>(result) * PET_DEFS[state.current_pet].permille) / 1000U);
    }
    uint8_t completed = 0;
    for(uint8_t i = 0; i < CHALLENGE_COUNT; i++) if(state.challenge_completions & (1U << i)) completed++;
    result += completed * 50U;
    uint8_t achieved = 0;
    for(uint8_t i = 0; i < ACHIEVEMENT_COUNT; i++) if(state.achievements & (1UL << i)) achieved++;
    result += achieved * 10U;
    return result;
}

uint16_t game_challenge_output_permille(const GameState &state) {
    if(challenge_active(state, CHALLENGE_REDUCED_PRODUCTION) ||
       challenge_active(state, CHALLENGE_HALF_PRODUCTION)) return 500U;
    return 1000U;
}

BigNum game_upgrade_cost(const GameState &state, uint8_t upgrade) {
    if(upgrade >= UPGRADE_COUNT) return bn_zero();
    return content_cost(UPGRADE_DEFS[upgrade].base_cost, UPGRADE_DEFS[upgrade].growth_permille,
                        state.upgrade_levels[upgrade]);
}

bool game_buy_upgrade(GameState &state, uint8_t upgrade) {
    if(upgrade >= UPGRADE_COUNT) return false;
    const UpgradeDef &definition = UPGRADE_DEFS[upgrade];
    if(challenge_active(state, CHALLENGE_NO_AUTOBLOWERS) &&
       (definition.effect == EFFECT_ALB_COUNT || definition.effect == EFFECT_ALB_POWER)) return false;
    if(!game_system_unlocked(state, definition.requirement) ||
       state.upgrade_levels[upgrade] >= definition.max_level) return false;
    BigNum cost = game_upgrade_cost(state, upgrade);
    if(!game_spend(state, definition.cost_resource, cost)) return false;
    state.upgrade_levels[upgrade]++;
    return true;
}

bool game_buy_tool(GameState &state, uint8_t tool) {
    if(tool >= TOOL_COUNT || !game_system_unlocked(state, TOOL_DEFS[tool].requirement)) return false;
    if(game_tool_unlocked(state, tool)) {
        state.current_tool = tool;
        return true;
    }
    if(!game_spend(state, TOOL_DEFS[tool].cost_resource, TOOL_DEFS[tool].cost)) return false;
    game_unlock_tool(state, tool);
    state.current_tool = tool;
    return true;
}

bool game_buy_area(GameState &state, uint8_t area) {
    if(area >= AREA_COUNT || !game_system_unlocked(state, AREA_DEFS[area].requirement)) return false;
    if(game_area_unlocked(state, area)) {
        state.current_area = area;
        return true;
    }
    BigNum cost = AREA_DEFS[area].cost;
    uint16_t discount = game_effect_level(state, EFFECT_AREA_DISCOUNT);
    if(discount > 0) cost = bn_scale_permille(cost, 1000U - (discount > 20 ? 500U : discount * 25U));
    if(!game_spend(state, AREA_DEFS[area].cost_resource, cost)) return false;
    game_unlock_area(state, area);
    state.current_area = area;
    return true;
}

bool game_buy_pet(GameState &state, uint8_t pet) {
    if(challenge_active(state, CHALLENGE_PETLESS)) return false;
    if(pet >= PET_COUNT || !game_system_unlocked(state, SYS_PETS)) return false;
    if(game_pet_unlocked(state, pet)) {
        state.current_pet = pet;
        return true;
    }
    if(!game_spend(state, PET_DEFS[pet].cost_resource, PET_DEFS[pet].cost)) return false;
    game_unlock_pet(state, pet);
    state.current_pet = pet;
    return true;
}

void game_refresh_unlocks(GameState &state) {
    if(bn_compare(state.lifetime[RES_LEAVES], bn_make(1000000, 3)) >= 0)
        game_unlock_system(state, SYS_FRUIT);
    if(bn_compare(state.lifetime[RES_LEAVES], bn_make(1000000, 3)) >= 0) game_unlock_system(state, SYS_PRESTIGE);
    if(!bn_is_zero(state.lifetime[RES_COINS])) {
        game_unlock_system(state, SYS_AREAS);
        game_unlock_system(state, SYS_PRINTERS);
    }
    if(bn_compare(state.lifetime[RES_COINS], bn_make(1000000, 2)) >= 0) game_unlock_system(state, SYS_CONVERTERS);
    if(game_system_unlocked(state, SYS_CONVERTERS)) game_unlock_system(state, SYS_FLASKS);
    if(bn_compare(state.lifetime[RES_STRANGE_FLASK], bn_make(1000000, 2)) >= 0) game_unlock_system(state, SYS_BLC);
    if(!bn_is_zero(state.lifetime[RES_BLC])) {
        game_unlock_system(state, SYS_SEEDS);
        game_unlock_system(state, SYS_AUTOBLOWERS);
    }
    if(bn_compare(state.lifetime[RES_BLC], bn_make(1000000, 2)) >= 0) game_unlock_system(state, SYS_PETS);
    if(game_system_unlocked(state, SYS_PETS)) game_unlock_system(state, SYS_UNIQUE_LEAVES);
    if(bn_compare(state.lifetime[RES_BLC], bn_make(1000000, 3)) >= 0) game_unlock_system(state, SYS_TRADING);
    if(bn_compare(state.lifetime[RES_BLC], bn_make(1000000, 4)) >= 0) {
        game_unlock_system(state, SYS_CRAFTING);
        game_unlock_system(state, SYS_MATERIALS);
        game_unlock_system(state, SYS_ALCHEMY);
        game_unlock_system(state, SYS_SHOVELLING);
        game_unlock_system(state, SYS_SCROLLS);
    }
    if(bn_compare(state.lifetime[RES_BLC], bn_make(1000000, 5)) >= 0) {
        game_unlock_system(state, SYS_ARTIFACTS);
        game_unlock_system(state, SYS_TOWER);
        game_unlock_system(state, SYS_EQUIPMENT);
    }
    if(state.tower_floor >= 100) game_unlock_system(state, SYS_MLC);
    if(!bn_is_zero(state.lifetime[RES_MLC])) {
        game_unlock_system(state, SYS_PYRAMID);
        game_unlock_system(state, SYS_BORBVENTURES);
        game_unlock_system(state, SYS_CARDS);
        game_unlock_system(state, SYS_CHESTS);
        game_unlock_system(state, SYS_FUSION_ASCENSION);
        game_unlock_system(state, SYS_PUB);
        game_unlock_system(state, SYS_HOUSE);
    }
    if(state.pyramid_floor >= 10) {
        game_unlock_system(state, SYS_DICE);
        game_unlock_system(state, SYS_DEATH_BOOK);
        game_unlock_system(state, SYS_MINES);
        game_unlock_system(state, SYS_FISHING);
        game_unlock_system(state, SYS_LEAFSCENSION);
        game_unlock_system(state, SYS_RELICS);
        game_unlock_system(state, SYS_MIRRORS);
    }
    if(state.pyramid_floor >= 50) game_unlock_system(state, SYS_ULC);
    if(!bn_is_zero(state.lifetime[RES_ULC])) {
        game_unlock_system(state, SYS_BANKS);
        game_unlock_system(state, SYS_SOUL_FORGE);
        game_unlock_system(state, SYS_GALAXIES);
        game_unlock_system(state, SYS_SOUL_CRYPT);
        game_unlock_system(state, SYS_SEASONS);
    }
    if(state.galaxy_stage >= 1) game_unlock_system(state, SYS_QUARK_REACTOR);
    if(state.galaxy_stage >= 1) game_unlock_system(state, SYS_LEAFTON_PIT);
    if(state.galaxy_stage >= 2) {
        game_unlock_system(state, SYS_SHADOW_CRYSTAL);
        game_unlock_system(state, SYS_SHADOW_TREE);
    }
    if(bn_compare(state.lifetime[RES_PLASMA], bn_from_u32(1000)) >= 0) {
        game_unlock_system(state, SYS_HARBOR);
        game_unlock_system(state, SYS_JOBS);
        game_unlock_system(state, SYS_SHIPS);
    }
}

uint8_t game_ulc_sacrifice_count(const GameState &state) {
    uint16_t mask = state.ulc_sacrifice_mask & ULC_SACRIFICE_ALL;
    uint8_t count = 0;
    while(mask != 0) {
        count += static_cast<uint8_t>(mask & 1U);
        mask >>= 1U;
    }
    return count;
}

uint8_t game_ulc_min_sacrifices(const GameState &state) {
    if(bn_is_zero(state.lifetime[RES_ULC])) return ULC_SACRIFICE_COUNT;
    uint16_t reduction = game_effect_level(state, EFFECT_LESS_SACRIFICES);
    if(reduction > 3U) reduction = 3U;
    return static_cast<uint8_t>(ULC_SACRIFICE_COUNT - reduction);
}

bool game_toggle_ulc_sacrifice(GameState &state, uint8_t sacrifice) {
    if(sacrifice >= ULC_SACRIFICE_COUNT || bn_is_zero(state.lifetime[RES_ULC])) return false;
    uint16_t bit = static_cast<uint16_t>(1U << sacrifice);
    if((state.ulc_sacrifice_mask & bit) != 0) {
        if(game_ulc_sacrifice_count(state) <= game_ulc_min_sacrifices(state)) return false;
        state.ulc_sacrifice_mask &= static_cast<uint16_t>(~bit);
    } else {
        state.ulc_sacrifice_mask |= bit;
    }
    return true;
}

BigNum game_reset_reward(const GameState &state, ResetTier tier) {
    switch(tier) {
        case RESET_PRESTIGE: {
            uint32_t magnitude = bn_log10_floor(state.resources[RES_LEAVES]);
            if(magnitude < 3) return bn_zero();
            return bn_make(1000000, static_cast<int16_t>(magnitude - 1));
        }
        case RESET_BLC: {
            uint32_t magnitude = bn_log10_floor(state.resources[RES_STRANGE_FLASK]);
            if(magnitude < 2) return bn_zero();
            return bn_scale_permille(bn_make(1000000, static_cast<int16_t>(magnitude)),
                                     game_effect_permille(state, EFFECT_BLC_REWARD));
        }
        case RESET_MLC: {
            if(state.tower_floor < 100) return bn_zero();
            BigNum base = bn_from_u32(100U + (state.tower_floor - 100U) * 20U);
            return bn_scale_permille(base, game_effect_permille(state, EFFECT_MLC_REWARD));
        }
        case RESET_ULC: {
            uint8_t sacrifices = game_ulc_sacrifice_count(state);
            if(state.pyramid_floor < 50 || sacrifices < game_ulc_min_sacrifices(state)) return bn_zero();
            BigNum base = bn_from_u32(10U + (state.pyramid_floor - 50U) * 2U);
            base = bn_scale_permille(base, game_effect_permille(state, EFFECT_ULC_REWARD));
            return bn_scale_permille(base, 1000U + static_cast<uint32_t>(sacrifices - 1U) * 50U);
        }
        case RESET_QUARKSTIGE: {
            BigNum cost = bn_add(bn_from_u32(1000000U),
                                 bn_mul_u32(bn_from_u32(250000U), state.quarkstiges_consecutive));
            return bn_compare(state.resources[RES_QUARKS], cost) >= 0 ? bn_from_u32(1U) : bn_zero();
        }
    }
    return bn_zero();
}

bool game_can_reset(const GameState &state, ResetTier tier) {
    return !bn_is_zero(game_reset_reward(state, tier));
}

static void clear_resources(GameState &state, uint8_t first, uint8_t last) {
    for(uint8_t i = first; i <= last && i < RESOURCE_COUNT; i++) state.resources[i] = bn_zero();
}

static void clear_shop_upgrades(GameState &state, ShopId first, ShopId last) {
    for(uint8_t i = 0; i < UPGRADE_COUNT; i++) {
        if(UPGRADE_DEFS[i].shop >= first && UPGRADE_DEFS[i].shop <= last) state.upgrade_levels[i] = 0;
    }
}

static void clear_early_run(GameState &state) {
    clear_resources(state, RES_LEAVES, RES_SAND);
    clear_resources(state, RES_RED_FLASK, RES_STRANGE_FLASK);
}

static void clear_trades(GameState &state) {
    std::memset(state.trades, 0, sizeof(state.trades));
    state.trade_refresh_time = 0;
    state.upgrade_levels[PROG_TRADE_COMPLETIONS] = 0;
}

static bool ulc_sacrifices(const GameState &state, UlcSacrifice sacrifice) {
    return (state.ulc_sacrifice_mask & (1U << static_cast<uint8_t>(sacrifice))) != 0;
}

static void apply_ulc_sacrifices(GameState &state) {
    if(ulc_sacrifices(state, ULC_SAC_BORBVENTURES)) {
        state.borbventure_finish_time = 0;
        state.upgrade_levels[PROG_BORBVENTURE_RANK] = 0;
    }
    if(ulc_sacrifices(state, ULC_SAC_CARDS)) {
        state.resources[RES_CARD_PARTS] = bn_zero();
        for(uint8_t slot = PROG_CARD_LEAF; slot <= PROG_CARD_REWARD; slot++)
            state.upgrade_levels[slot] = 0;
    }
    if(ulc_sacrifices(state, ULC_SAC_CRAFTED_LEAVES)) {
        std::memset(state.crafted, 0, sizeof(state.crafted));
    } else if(ulc_sacrifices(state, ULC_SAC_EQUIPMENT)) {
        for(auto &item: state.crafted) {
            item.level = 0;
            item.equipped = false;
        }
    }
    if(ulc_sacrifices(state, ULC_SAC_DICE)) {
        state.resources[RES_DICE_POINTS] = bn_zero();
        state.upgrade_levels[PROG_DICE_TIER] = 0;
    }
    if(ulc_sacrifices(state, ULC_SAC_LEAFSCENSIONS))
        state.upgrade_levels[PROG_LEAFSCENSION] = 0;
    if(ulc_sacrifices(state, ULC_SAC_MATERIALS)) {
        state.resources[RES_MATERIALS] = bn_zero();
        state.resources[RES_ESSENCE] = bn_zero();
        state.resources[RES_SHARDS] = bn_zero();
    }
    if(ulc_sacrifices(state, ULC_SAC_MINES)) state.resources[RES_COAL_BARS] = bn_zero();
    if(ulc_sacrifices(state, ULC_SAC_QUARKSTIGES)) {
        state.quarkstiges_consecutive = 0;
        state.quarkstiges_total = 0;
    }
    if(ulc_sacrifices(state, ULC_SAC_RELICS)) state.resources[RES_RELIC_FRAGMENTS] = bn_zero();
    if(ulc_sacrifices(state, ULC_SAC_CRAFTED_LEAVES) ||
       ulc_sacrifices(state, ULC_SAC_EQUIPMENT) || ulc_sacrifices(state, ULC_SAC_MATERIALS))
        clear_shop_upgrades(state, SHOP_CRAFT, SHOP_CRAFT);
}

static void clear_ulc_run(GameState &state) {
    clear_early_run(state);
    clear_resources(state, RES_ANCIENT, RES_ELECTRICAL);
    clear_resources(state, RES_AMBER, RES_QUARK_LEAVES);
    state.resources[RES_COAL_LEAVES] = bn_zero();
    state.resources[RES_DUSK_LEAVES] = bn_zero();
    state.resources[RES_COINS] = bn_zero();
    state.resources[RES_BLC] = bn_zero();
    state.resources[RES_MLC] = bn_zero();
    state.resources[RES_CHEESE] = bn_zero();
    state.resources[RES_MULCH] = bn_zero();
    state.resources[RES_BORBS] = bn_zero();
    state.resources[RES_SOULS] = bn_zero();
    state.resources[RES_QUARKS] = bn_zero();
    state.resources[RES_QUANTUM_BLOBS] = bn_zero();
    state.resources[RES_ENERGY] = bn_zero();
    state.resources[RES_BEER] = bn_zero();
    state.resources[RES_SILVER_TOKENS] = bn_zero();
    state.resources[RES_GOLD_TOKENS] = bn_zero();
    clear_shop_upgrades(state, SHOP_LEAF, SHOP_MLC);
    clear_shop_upgrades(state, SHOP_AUTOMATION, SHOP_AUTOMATION);
    clear_trades(state);
    state.bank_balance = bn_zero();
    state.upgrade_levels[PROG_BANK_LAST_TICK] = 0;
    state.upgrade_levels[PROG_BANK_LAST_TICK_HI] = 0;
    state.artifact_ready_time = 0;
    state.upgrade_levels[PROG_ARTIFACTS_FOUND] = 0;
    state.upgrade_levels[PROG_FRUIT] = 0;
    state.upgrade_levels[PROG_SCROLLS] = 0;
    state.upgrade_levels[PROG_CHESTS] = 0;
    state.upgrade_levels[PROG_SOUL_FORGE] = 0;
    state.upgrade_levels[PROG_SOUL_CRYPT] = 0;
    state.upgrade_levels[PROG_LEAFTON_PIT] = 0;
    state.upgrade_levels[PROG_MIRRORS] = 0;
    state.death_book_level = 0;
    state.tower_floor = 0;
    state.pyramid_floor = 0;
    apply_ulc_sacrifices(state);
}

bool game_apply_reset(GameState &state, ResetTier tier) {
    if(challenge_active(state, CHALLENGE_NO_PRESTIGE) && tier == RESET_PRESTIGE) return false;
    BigNum reward = game_reset_reward(state, tier);
    if(bn_is_zero(reward)) return false;
    if(tier == RESET_PRESTIGE) {
        clear_early_run(state);
        clear_shop_upgrades(state, SHOP_LEAF, SHOP_GOLD);
        game_add(state, RES_COINS, reward);
    } else if(tier == RESET_BLC) {
        bool keep_coins = game_effect_level(state, EFFECT_KEEP_COINS) > 0;
        BigNum saved_coins = state.resources[RES_COINS];
        uint16_t saved_printer = 0;
        if(keep_coins) {
            for(uint8_t i = 0; i < UPGRADE_COUNT; i++)
                if(UPGRADE_DEFS[i].effect == EFFECT_PRINTER) saved_printer = state.upgrade_levels[i];
        }
        clear_early_run(state);
        clear_shop_upgrades(state, SHOP_LEAF, SHOP_COIN);
        if(keep_coins) {
            state.resources[RES_COINS] = saved_coins;
            for(uint8_t i = 0; i < UPGRADE_COUNT; i++)
                if(UPGRADE_DEFS[i].effect == EFFECT_PRINTER) state.upgrade_levels[i] = saved_printer;
        }
        game_add(state, RES_BLC, reward);
    } else if(tier == RESET_MLC) {
        bool keep_blc = game_effect_level(state, EFFECT_KEEP_BLC) > 0;
        clear_early_run(state);
        clear_shop_upgrades(state, SHOP_LEAF, SHOP_BLC);
        if(!keep_blc) state.resources[RES_BLC] = bn_zero();
        std::memset(state.area_unlocks, 0, sizeof(state.area_unlocks));
        game_unlock_area(state, 0);
        state.tower_floor = 0;
        clear_trades(state);
        game_add(state, RES_MLC, reward);
    } else if(tier == RESET_ULC) {
        bool stable_areas = game_effect_level(state, EFFECT_STABLE_AREAS) > 0;
        clear_ulc_run(state);
        if(!stable_areas) {
            std::memset(state.area_unlocks, 0, sizeof(state.area_unlocks));
            game_unlock_area(state, 0);
        }
        game_add(state, RES_ULC, reward);
    } else {
        state.resources[RES_QUARKS] = bn_zero();
        state.resources[RES_QUARK_LEAVES] = bn_zero();
        uint32_t streak = state.quarkstiges_consecutive;
        game_add(state, RES_QUARK_LEAVES, bn_mul_u32(bn_from_u32(250000U), streak + 1U));
        game_add(state, RES_QUANTUM_BLOBS, reward);
        if(state.quarkstiges_consecutive < 65535U) state.quarkstiges_consecutive++;
        if(state.quarkstiges_total < 65535U) state.quarkstiges_total++;
        game_refresh_unlocks(state);
        return true;
    }
    state.current_area = 0;
    state.combo = 0;
    game_refresh_unlocks(state);
    return true;
}

static BigNum passive_rate(const GameState &state) {
    uint32_t printer = game_effect_permille(state, EFFECT_PRINTER);
    uint32_t alb = game_effect_level(state, EFFECT_ALB_COUNT) * game_effect_permille(state, EFFECT_ALB_POWER);
    uint32_t rate = 1U + printer / 1000U + alb / 250U;
    BigNum result = bn_scale_permille(bn_from_u32(rate), game_effect_permille(state, EFFECT_ALL_REWARDS));
    return bn_scale_permille(result, game_challenge_output_permille(state));
}

void game_tick_second(GameState &state, uint32_t now) {
    state.play_seconds++;
    ResourceId current = AREA_DEFS[state.current_area].leaf;
    if(game_system_unlocked(state, SYS_PRINTERS) || game_system_unlocked(state, SYS_AUTOBLOWERS)) {
        game_add(state, current, passive_rate(state));
    }
    if(game_system_unlocked(state, SYS_CONVERTERS) && !bn_is_zero(state.resources[RES_LEAVES])) {
        BigNum amount = bn_scale_permille(bn_from_u32(1), game_effect_permille(state, EFFECT_CONVERTER));
        if(game_spend(state, RES_LEAVES, amount)) game_add(state, RES_RED_FLASK, amount);
        for(uint8_t i = RES_RED_FLASK; i < RES_STRANGE_FLASK; i++) {
            if(game_spend(state, static_cast<ResourceId>(i), amount))
                game_add(state, static_cast<ResourceId>(i + 1), amount);
        }
    }
    if(game_system_unlocked(state, SYS_SEEDS)) {
        uint32_t growth = 1U + game_effect_level(state, EFFECT_SEED);
        for(uint8_t i = RES_LEAVES; i <= RES_ELECTRICAL; i++) {
            if(!bn_is_zero(state.resources[i])) game_add(state, static_cast<ResourceId>(i), bn_div_u32(state.resources[i], 100000U / growth));
        }
    }
    if(state.borbventure_finish_time && now >= state.borbventure_finish_time) {
        game_add(state, RES_BORBS, bn_from_u32(250));
        state.borbventure_finish_time = 0;
    }
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        if(state.trades[i].active && now >= state.trades[i].finish_time) {
            game_add(state, static_cast<ResourceId>(state.trades[i].output_resource), state.trades[i].output_amount);
            game_add(state, RES_CHEESE, bn_from_u32(1));
            state.trades[i].active = false;
        }
    }
    state.last_rtc = now;
    if(state.combo_timer > 0) state.combo_timer--;
    else state.combo = 0;
    game_refresh_unlocks(state);
    game_check_achievements(state);
}

void game_apply_offline(GameState &state, uint32_t elapsed_seconds) {
    if(elapsed_seconds == 0) return;
    if(elapsed_seconds > 7UL * 24UL * 60UL * 60UL) elapsed_seconds = 7UL * 24UL * 60UL * 60UL;
    uint32_t offline = game_effect_permille(state, EFFECT_OFFLINE);
    BigNum amount = bn_mul_u32(passive_rate(state), elapsed_seconds);
    amount = bn_scale_permille(amount, offline > 1000U ? offline - 1000U : 250U);
    game_add(state, AREA_DEFS[state.current_area].leaf, amount);
    if(game_system_unlocked(state, SYS_MATERIALS)) game_add(state, RES_MATERIALS, bn_div_u32(amount, 1000));
    if(game_system_unlocked(state, SYS_CONVERTERS)) {
        BigNum science = bn_mul_u32(bn_scale_permille(bn_from_u32(1),
                                      game_effect_permille(state, EFFECT_CONVERTER)), elapsed_seconds);
        for(uint8_t i = RES_RED_FLASK; i <= RES_STRANGE_FLASK; i++)
            game_add(state, static_cast<ResourceId>(i), science);
    }
    if(game_system_unlocked(state, SYS_SEEDS)) {
        uint32_t seed_seconds = elapsed_seconds > 86400UL ? 86400UL : elapsed_seconds;
        uint32_t growth = 1U + game_effect_level(state, EFFECT_SEED);
        for(uint8_t i = RES_LEAVES; i <= RES_ELECTRICAL; i++) {
            BigNum grown = bn_div_u32(bn_mul_u32(state.resources[i], seed_seconds * growth), 100000U);
            if(!bn_is_zero(grown)) game_add(state, static_cast<ResourceId>(i), grown);
        }
    }
    if(game_system_unlocked(state, SYS_FISHING))
        game_add(state, RES_FISH_CREDITS, bn_from_u32(elapsed_seconds / 600U));
    if(game_system_unlocked(state, SYS_HARBOR)) {
        uint32_t jobs = elapsed_seconds / 300U;
        game_add(state, RES_WATER_CRYSTALS, bn_from_u32(jobs));
        game_add(state, RES_SHIP_FUEL, bn_from_u32(jobs * 2U));
    }
    if(game_system_unlocked(state, SYS_DEATH_BOOK))
        game_add(state, RES_SOULS, bn_from_u32(elapsed_seconds / 3600U));
    if(game_system_unlocked(state, SYS_BANKS) && !bn_is_zero(state.bank_balance)) {
        uint32_t interest = (elapsed_seconds / 60U) * (1U + game_effect_level(state, EFFECT_BANK));
        if(interest > 50000U) interest = 50000U;
        state.bank_balance = bn_add(state.bank_balance, bn_scale_permille(state.bank_balance, interest));
    }
    if(game_system_unlocked(state, SYS_QUARK_REACTOR)) {
        game_add(state, RES_ENERGY, bn_from_u32(elapsed_seconds / 60U));
        game_add(state, RES_QUARKS, bn_from_u32(elapsed_seconds / 10U));
    }
}

void game_check_achievements(GameState &state) {
    for(uint8_t i = 0; i < ACHIEVEMENT_COUNT; i++) {
        if(bn_compare(state.lifetime[ACHIEVEMENT_DEFS[i].resource], ACHIEVEMENT_DEFS[i].threshold) >= 0)
            state.achievements |= 1UL << i;
    }
}

static void capture_challenge_snapshot(GameState &state) {
    std::memcpy(state.challenge_snapshot.resources, state.resources, sizeof(state.resources));
    std::memcpy(state.challenge_snapshot.lifetime, state.lifetime, sizeof(state.lifetime));
    std::memcpy(state.challenge_snapshot.upgrade_levels, state.upgrade_levels, sizeof(state.upgrade_levels));
    std::memcpy(state.challenge_snapshot.area_unlocks, state.area_unlocks, sizeof(state.area_unlocks));
    state.challenge_snapshot.system_unlocks = state.system_unlocks;
    state.challenge_snapshot.tool_unlocks = state.tool_unlocks;
    state.challenge_snapshot.pet_unlocks = state.pet_unlocks;
    state.challenge_snapshot.achievements = state.achievements;
    state.challenge_snapshot.challenge_completions = state.challenge_completions;
    state.challenge_snapshot.current_area = state.current_area;
    state.challenge_snapshot.current_tool = state.current_tool;
    state.challenge_snapshot.current_pet = state.current_pet;
    state.challenge_snapshot.selected_resource = state.selected_resource;
    std::memcpy(state.challenge_snapshot.crafted, state.crafted, sizeof(state.crafted));
    std::memcpy(state.challenge_snapshot.trades, state.trades, sizeof(state.trades));
    state.challenge_snapshot.bank_balance = state.bank_balance;
    state.challenge_snapshot.trade_refresh_time = state.trade_refresh_time;
    state.challenge_snapshot.borbventure_finish_time = state.borbventure_finish_time;
    state.challenge_snapshot.artifact_ready_time = state.artifact_ready_time;
    state.challenge_snapshot.play_seconds = state.play_seconds;
    state.challenge_snapshot.rng_state = state.rng_state;
    state.challenge_snapshot.tower_floor = state.tower_floor;
    state.challenge_snapshot.pyramid_floor = state.pyramid_floor;
    state.challenge_snapshot.mine_depth = state.mine_depth;
    state.challenge_snapshot.fishing_level = state.fishing_level;
    state.challenge_snapshot.death_book_level = state.death_book_level;
    state.challenge_snapshot.galaxy_stage = state.galaxy_stage;
    state.challenge_snapshot.combo = state.combo;
    state.challenge_snapshot.combo_timer = state.combo_timer;
    state.challenge_snapshot.quarkstiges_consecutive = state.quarkstiges_consecutive;
    state.challenge_snapshot.quarkstiges_total = state.quarkstiges_total;
    state.challenge_snapshot.ulc_sacrifice_mask = state.ulc_sacrifice_mask;
}

static void initialize_challenge_universe(GameState &state, uint8_t challenge) {
    std::memset(state.resources, 0, sizeof(state.resources));
    std::memset(state.lifetime, 0, sizeof(state.lifetime));
    std::memset(state.upgrade_levels, 0, sizeof(state.upgrade_levels));
    state.system_unlocks = 0;
    std::memset(state.area_unlocks, 0, sizeof(state.area_unlocks));
    state.tool_unlocks = 0;
    state.pet_unlocks = 0;
    state.current_area = 0;
    state.current_tool = 0;
    state.current_pet = 0;
    state.selected_resource = RES_LEAVES;
    state.achievements = 0;
    state.challenge_completions = 0;
    std::memset(state.crafted, 0, sizeof(state.crafted));
    std::memset(state.trades, 0, sizeof(state.trades));
    state.bank_balance = bn_zero();
    state.trade_refresh_time = 0;
    state.borbventure_finish_time = 0;
    state.artifact_ready_time = 0;
    state.play_seconds = 0;
    state.rng_state = 0x43484C47UL ^ (static_cast<uint32_t>(challenge) * 0x9E3779B9UL);
    state.tower_floor = 0;
    state.pyramid_floor = 0;
    state.mine_depth = 0;
    state.fishing_level = 0;
    state.death_book_level = 0;
    state.galaxy_stage = 0;
    state.quarkstiges_consecutive = 0;
    state.quarkstiges_total = 0;
    state.ulc_sacrifice_mask = ULC_SACRIFICE_ALL;
    state.combo = 0;
    state.combo_timer = 0;
    state.active_challenge = challenge;
    state.challenge_running = true;
    game_unlock_system(state, SYS_TOOLS);
    game_unlock_system(state, SYS_CHALLENGES);
    game_unlock_system(state, SYS_MILESTONES);
    game_unlock_system(state, SYS_DAILY);
    game_unlock_area(state, 0);
    game_unlock_tool(state, 0);
}

bool game_start_challenge(GameState &state, uint8_t challenge) {
    if(state.challenge_running || challenge >= CHALLENGE_COUNT) return false;
    capture_challenge_snapshot(state);
    initialize_challenge_universe(state, challenge);
    return true;
}

static void restore_challenge(GameState &state) {
    std::memcpy(state.resources, state.challenge_snapshot.resources, sizeof(state.resources));
    std::memcpy(state.lifetime, state.challenge_snapshot.lifetime, sizeof(state.lifetime));
    std::memcpy(state.upgrade_levels, state.challenge_snapshot.upgrade_levels, sizeof(state.upgrade_levels));
    std::memcpy(state.area_unlocks, state.challenge_snapshot.area_unlocks, sizeof(state.area_unlocks));
    state.system_unlocks = state.challenge_snapshot.system_unlocks;
    state.tool_unlocks = state.challenge_snapshot.tool_unlocks;
    state.pet_unlocks = state.challenge_snapshot.pet_unlocks;
    state.achievements = state.challenge_snapshot.achievements;
    state.challenge_completions = state.challenge_snapshot.challenge_completions;
    state.current_area = state.challenge_snapshot.current_area;
    state.current_tool = state.challenge_snapshot.current_tool;
    state.current_pet = state.challenge_snapshot.current_pet;
    state.selected_resource = state.challenge_snapshot.selected_resource;
    std::memcpy(state.crafted, state.challenge_snapshot.crafted, sizeof(state.crafted));
    std::memcpy(state.trades, state.challenge_snapshot.trades, sizeof(state.trades));
    state.bank_balance = state.challenge_snapshot.bank_balance;
    state.trade_refresh_time = state.challenge_snapshot.trade_refresh_time;
    state.borbventure_finish_time = state.challenge_snapshot.borbventure_finish_time;
    state.artifact_ready_time = state.challenge_snapshot.artifact_ready_time;
    state.play_seconds = state.challenge_snapshot.play_seconds;
    state.rng_state = state.challenge_snapshot.rng_state;
    state.tower_floor = state.challenge_snapshot.tower_floor;
    state.pyramid_floor = state.challenge_snapshot.pyramid_floor;
    state.mine_depth = state.challenge_snapshot.mine_depth;
    state.fishing_level = state.challenge_snapshot.fishing_level;
    state.death_book_level = state.challenge_snapshot.death_book_level;
    state.galaxy_stage = state.challenge_snapshot.galaxy_stage;
    state.combo = state.challenge_snapshot.combo;
    state.combo_timer = state.challenge_snapshot.combo_timer;
    state.quarkstiges_consecutive = state.challenge_snapshot.quarkstiges_consecutive;
    state.quarkstiges_total = state.challenge_snapshot.quarkstiges_total;
    state.ulc_sacrifice_mask = state.challenge_snapshot.ulc_sacrifice_mask;
    state.active_challenge = 0xFF;
    state.challenge_running = false;
    std::memset(&state.challenge_snapshot, 0, sizeof(state.challenge_snapshot));
}

static bool challenge_goal_met(const GameState &state) {
    switch(state.active_challenge) {
        case CHALLENGE_NO_AUTOBLOWERS:
            if(!game_can_reset(state, RESET_PRESTIGE)) return false;
            for(uint8_t i = 0; i < UPGRADE_COUNT; i++) {
                if((UPGRADE_DEFS[i].effect == EFFECT_ALB_COUNT ||
                    UPGRADE_DEFS[i].effect == EFFECT_ALB_POWER) && state.upgrade_levels[i] != 0) return false;
            }
            return true;
        case CHALLENGE_REDUCED_PRODUCTION:
            return game_can_reset(state, RESET_BLC);
        case CHALLENGE_PETLESS:
            return game_system_unlocked(state, SYS_TOWER) && state.pet_unlocks == 0;
        case CHALLENGE_NO_PRESTIGE:
            return game_can_reset(state, RESET_BLC);
        case CHALLENGE_TRADER_CRUNCH:
            return PROG_TRADE_COMPLETIONS < MAX_UPGRADES &&
                   state.upgrade_levels[PROG_TRADE_COMPLETIONS] >= 10U;
        case CHALLENGE_HALF_PRODUCTION:
            return game_can_reset(state, RESET_ULC);
        default:
            return false;
    }
}

bool game_finish_challenge(GameState &state) {
    if(!state.challenge_running || state.active_challenge >= CHALLENGE_COUNT) return false;
    uint8_t challenge = state.active_challenge;
    if(!challenge_goal_met(state)) return false;
    restore_challenge(state);
    state.challenge_completions |= 1U << challenge;
    game_add(state, RES_GEMS, bn_from_u32(5U + challenge * 5U));
    return true;
}

void game_abandon_challenge(GameState &state) {
    if(state.challenge_running) restore_challenge(state);
}
