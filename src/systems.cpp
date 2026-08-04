#include "systems.h"

#include <cstddef>

namespace {

static_assert(MAX_UPGRADES > PROG_SHIPS, "advanced progress exceeds save capacity");

constexpr uint16_t MAX_MASTERY = 1000;

uint16_t progress(const GameState &state, ProgressSlot slot) {
    return state.upgrade_levels[static_cast<uint8_t>(slot)];
}

uint16_t &progress(GameState &state, ProgressSlot slot) {
    return state.upgrade_levels[static_cast<uint8_t>(slot)];
}

void increment_progress(GameState &state, ProgressSlot slot, uint16_t maximum = MAX_MASTERY) {
    uint16_t &value = progress(state, slot);
    if(value < maximum) value++;
}

uint32_t deadline_after(uint32_t now, uint32_t seconds) {
    return seconds > 0xFFFFFFFFUL - now ? 0xFFFFFFFFUL : now + seconds;
}

bool action_complete(GameState &state) {
    game_refresh_unlocks(state);
    game_check_achievements(state);
    return true;
}

bool spend_pair(GameState &state, ResourceId first_resource, BigNum first_amount,
                ResourceId second_resource, BigNum second_amount) {
    if(!bn_valid(first_amount) || !bn_valid(second_amount)) return false;
    if(first_resource == second_resource) {
        BigNum total = bn_add(first_amount, second_amount);
        if(bn_compare(state.resources[first_resource], total) < 0) return false;
        return game_spend(state, first_resource, total);
    }
    if(bn_compare(state.resources[first_resource], first_amount) < 0 ||
       bn_compare(state.resources[second_resource], second_amount) < 0) return false;
    /* Both balances were checked above, so neither spend can fail. */
    game_spend(state, first_resource, first_amount);
    game_spend(state, second_resource, second_amount);
    return true;
}

bool valid_item(const CraftedItem &item) {
    return item.quality > 0 && item.quality <= 100 &&
           item.property < CRAFT_PROPERTY_COUNT && item.leaf_tier <= RES_ELECTRICAL;
}

uint32_t equipped_bonus(const GameState &state, CraftProperty property) {
    uint32_t bonus = 1000;
    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        const CraftedItem &item = state.crafted[i];
        if(item.equipped && valid_item(item) && item.property == property) {
            bonus += static_cast<uint32_t>(item.quality) * (static_cast<uint32_t>(item.level) + 1U) / 4U;
        }
    }
    return bonus > 5000U ? 5000U : bonus;
}

uint32_t card_bonus(const GameState &state, CardType card) {
    return 1000U + static_cast<uint32_t>(systems_card_level(state, card)) * 25U;
}

uint32_t combined_bonus(const GameState &state, CraftProperty property, CardType card) {
    uint64_t result = static_cast<uint64_t>(equipped_bonus(state, property)) * card_bonus(state, card);
    result = result * game_effect_permille(state, EFFECT_ALL_REWARDS) / 1000000ULL;
    uint32_t relics = progress(state, PROG_RELICS);
    uint32_t house = progress(state, PROG_HOUSE);
    uint32_t shadow = progress(state, PROG_SHADOW_TREE);
    if(relics > 500U) relics = 500U;
    if(house > 500U) house = 500U;
    if(shadow > 500U) shadow = 500U;
    uint32_t permanent = 1000U + relics * 5U + house * 2U + shadow * 10U;
    result = result * permanent / 1000U;
    result = result * game_effect_permille(state, EFFECT_SHADOW_TREE) / 1000U;
    if(result > 10000U) result = 10000U;
    return static_cast<uint32_t>(result);
}

bool valid_offer(const TradeOffer &offer) {
    return offer.input_resource < RESOURCE_COUNT && offer.output_resource < RESOURCE_COUNT &&
           offer.input_resource != offer.output_resource && bn_valid(offer.input_amount) &&
           bn_valid(offer.output_amount) && !bn_is_zero(offer.input_amount) &&
           !bn_is_zero(offer.output_amount);
}

void clear_offer(TradeOffer &offer) {
    offer.input_resource = 0;
    offer.output_resource = 0;
    offer.input_amount = bn_zero();
    offer.output_amount = bn_zero();
    offer.finish_time = 0;
    offer.active = false;
}

const ResourceId TRADE_INPUTS[] = {
        RES_LEAVES, RES_GOLD, RES_PLATINUM, RES_BISMUTH, RES_VOID, RES_CELESTIAL,
        RES_COINS, RES_RED_FLASK, RES_ORANGE_FLASK, RES_STRANGE_FLASK, RES_BLC,
        RES_MATERIALS, RES_MULCH
};

bool output_available(const GameState &state, ResourceId resource) {
    switch(resource) {
        case RES_CHEESE: return true;
        case RES_MATERIALS: return game_system_unlocked(state, SYS_MATERIALS);
        case RES_ESSENCE: return game_system_unlocked(state, SYS_ALCHEMY);
        case RES_MULCH: return game_system_unlocked(state, SYS_MATERIALS);
        case RES_BORBS: return game_system_unlocked(state, SYS_BORBVENTURES);
        case RES_CARD_PARTS: return game_system_unlocked(state, SYS_CARDS);
        case RES_DICE_POINTS: return game_system_unlocked(state, SYS_DICE);
        case RES_SOULS: return game_system_unlocked(state, SYS_DEATH_BOOK);
        default: return false;
    }
}

const ResourceId TRADE_OUTPUTS[] = {
        RES_CHEESE, RES_MATERIALS, RES_ESSENCE, RES_MULCH,
        RES_BORBS, RES_CARD_PARTS, RES_DICE_POINTS, RES_SOULS
};

uint8_t available_output_count(const GameState &state) {
    uint8_t count = 0;
    for(ResourceId resource : TRADE_OUTPUTS) if(output_available(state, resource)) count++;
    return count;
}

ResourceId available_output_at(const GameState &state, uint8_t wanted) {
    for(ResourceId resource : TRADE_OUTPUTS) {
        if(output_available(state, resource)) {
            if(wanted == 0) return resource;
            wanted--;
        }
    }
    return RES_CHEESE;
}

bool find_trade_input(GameState &state, ResourceId &resource) {
    const uint8_t count = static_cast<uint8_t>(sizeof(TRADE_INPUTS) / sizeof(TRADE_INPUTS[0]));
    uint8_t start = static_cast<uint8_t>(game_rand(state) % count);
    for(uint8_t offset = 0; offset < count; offset++) {
        ResourceId candidate = TRADE_INPUTS[(start + offset) % count];
        if(!bn_is_zero(state.resources[candidate])) {
            resource = candidate;
            return true;
        }
    }
    return false;
}

ProgressSlot card_slot(CardType card) {
    return static_cast<ProgressSlot>(PROG_CARD_LEAF + static_cast<uint8_t>(card));
}

uint32_t bank_last_tick(const GameState &state) {
    return static_cast<uint32_t>(progress(state, PROG_BANK_LAST_TICK)) |
           (static_cast<uint32_t>(progress(state, PROG_BANK_LAST_TICK_HI)) << 16U);
}

void set_bank_last_tick(GameState &state, uint32_t tick) {
    progress(state, PROG_BANK_LAST_TICK) = static_cast<uint16_t>(tick);
    progress(state, PROG_BANK_LAST_TICK_HI) = static_cast<uint16_t>(tick >> 16U);
}

bool persistent_levels_valid(const uint16_t *levels) {
    if(UPGRADE_COUNT > PROG_TRADE_COMPLETIONS) return false;
    for(uint8_t slot = UPGRADE_COUNT; slot < PROG_TRADE_COMPLETIONS; slot++) {
        if(levels[slot] != 0) return false;
    }
    return levels[PROG_ALCHEMY_MASTERY] <= 1000U &&
           levels[PROG_ARTIFACTS_FOUND] <= 1000U &&
           levels[PROG_BORBVENTURE_RANK] <= 500U &&
           levels[PROG_CARD_LEAF] <= 200U &&
           levels[PROG_CARD_TRADE] <= 200U &&
           levels[PROG_CARD_COMBAT] <= 200U &&
           levels[PROG_CARD_REWARD] <= 200U &&
           levels[PROG_DICE_TIER] <= 50U &&
           levels[PROG_SOUL_FORGE] <= 500U &&
           levels[PROG_REACTOR] <= 500U &&
           levels[PROG_SHADOW] <= 500U &&
           levels[PROG_FRUIT] <= 500U &&
           levels[PROG_UNIQUE_LEAVES] <= 32U &&
           levels[PROG_SCROLLS] <= 500U &&
           levels[PROG_CHESTS] <= 1000U &&
           levels[PROG_LEAFSCENSION] <= 500U &&
           levels[PROG_RELICS] <= 500U &&
           levels[PROG_MIRRORS] <= 500U &&
           levels[PROG_SOUL_CRYPT] <= 1000U &&
           levels[PROG_LEAFTON_PIT] <= 500U &&
           levels[PROG_PUB] <= 1000U &&
           levels[PROG_HOUSE] <= 500U &&
           levels[PROG_HARBOR] <= 500U &&
           (levels[PROG_MILESTONE_FLAGS] & 0xF000U) == 0 &&
           levels[PROG_SHADOW_TREE] <= 500U &&
           levels[PROG_JOBS] <= 1000U &&
           levels[PROG_SHIPS] <= 1000U;
}

uint32_t combat_bonus(const GameState &state) {
    uint64_t result = static_cast<uint64_t>(game_effect_permille(state, EFFECT_DAMAGE)) *
                      equipped_bonus(state, CRAFT_COMBAT) / 1000U;
    result = result * card_bonus(state, CARD_COMBAT) / 1000U;
    result += static_cast<uint32_t>(state.death_book_level) * 10U;
    return result > 12000U ? 12000U : static_cast<uint32_t>(result);
}

struct AlchemyDef {
    ResourceId first_resource;
    uint16_t first_amount;
    ResourceId second_resource;
    uint16_t second_amount;
    ResourceId output_resource;
    uint16_t output_amount;
    SystemId extra_requirement;
};

const AlchemyDef ALCHEMY_DEFS[ALCHEMY_RECIPE_COUNT] = {
        {RES_MATERIALS, 100, RES_CHEESE, 0, RES_ESSENCE, 1, SYS_ALCHEMY},
        {RES_CHEESE, 25, RES_MATERIALS, 250, RES_MULCH, 50, SYS_ALCHEMY},
        {RES_MULCH, 500, RES_ESSENCE, 10, RES_SOULS, 1, SYS_DEATH_BOOK},
        {RES_SOULS, 25, RES_ESSENCE, 100, RES_ENERGY, 10, SYS_SOUL_FORGE}
};

} // namespace

bool systems_persistent_state_valid(const GameState &state) {
    return persistent_levels_valid(state.upgrade_levels) &&
           persistent_levels_valid(state.challenge_snapshot.upgrade_levels) &&
           state.tower_floor <= 1000U && state.pyramid_floor <= 500U &&
           state.mine_depth <= 1000U && state.fishing_level <= 1000U &&
           state.death_book_level <= 500U && state.galaxy_stage <= 100U &&
           state.challenge_snapshot.tower_floor <= 1000U &&
           state.challenge_snapshot.pyramid_floor <= 500U;
}

bool systems_trade_present(const GameState &state, uint8_t slot) {
    return slot < MAX_TRADES && valid_offer(state.trades[slot]);
}

uint16_t systems_trade_completions(const GameState &state) {
    return progress(state, PROG_TRADE_COMPLETIONS);
}

bool systems_generate_trades(GameState &state, uint32_t now) {
    if(!game_system_unlocked(state, SYS_TRADING)) return false;
    bool has_offer = false;
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        if(state.trades[i].active) has_offer = true;
        else if(valid_offer(state.trades[i]) && state.trades[i].finish_time == 0) has_offer = true;
    }
    if(has_offer && now < state.trade_refresh_time) return false;

    bool generated = false;
    uint8_t outputs = available_output_count(state);
    if(outputs == 0) return false;
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        TradeOffer &offer = state.trades[i];
        if(offer.active) continue;
        clear_offer(offer);
        ResourceId input;
        if(!find_trade_input(state, input)) continue;
        ResourceId output = available_output_at(state, static_cast<uint8_t>(game_rand(state) % outputs));
        if(output == input) output = RES_CHEESE;

        uint32_t divisor = 12U + game_rand(state) % 29U;
        BigNum amount = bn_div_u32(state.resources[input], divisor);
        if(bn_is_zero(amount)) amount = state.resources[input];
        uint32_t magnitude = bn_log10_floor(amount);
        uint32_t units = 1U + magnitude + game_rand(state) % 4U;
        uint64_t trade_bonus = static_cast<uint64_t>(game_effect_permille(state, EFFECT_TRADE)) *
                               equipped_bonus(state, CRAFT_TRADE) / 1000U;
        trade_bonus = trade_bonus * card_bonus(state, CARD_TRADE) / 1000U;

        offer.input_resource = static_cast<uint8_t>(input);
        offer.output_resource = static_cast<uint8_t>(output);
        offer.input_amount = amount;
        offer.output_amount = bn_scale_permille(bn_from_u32(units),
                                                trade_bonus > 10000U ? 10000U : static_cast<uint32_t>(trade_bonus));
        offer.finish_time = 0;
        offer.active = false;
        generated = true;
    }
    if(generated) state.trade_refresh_time = deadline_after(now, 300U);
    return generated;
}

bool systems_start_trade(GameState &state, uint8_t slot, uint32_t now) {
    if(!game_system_unlocked(state, SYS_TRADING) || slot >= MAX_TRADES) return false;
    TradeOffer &offer = state.trades[slot];
    if(offer.active || offer.finish_time != 0 || !valid_offer(offer)) return false;
    if(!game_spend(state, static_cast<ResourceId>(offer.input_resource), offer.input_amount)) return false;
    uint32_t speed = game_effect_permille(state, EFFECT_TRADE);
    speed = static_cast<uint32_t>(static_cast<uint64_t>(speed) * equipped_bonus(state, CRAFT_TRADE) / 1000U);
    speed = static_cast<uint32_t>(static_cast<uint64_t>(speed) * card_bonus(state, CARD_TRADE) / 1000U);
    if(speed < 1000U) speed = 1000U;
    uint32_t duration = 120000U / speed;
    if(duration < 12U) duration = 12U;
    offer.finish_time = deadline_after(now, duration);
    offer.active = true;
    return true;
}

bool systems_complete_trade(GameState &state, uint8_t slot, uint32_t now) {
    if(slot >= MAX_TRADES) return false;
    TradeOffer &offer = state.trades[slot];
    if(!valid_offer(offer) || offer.finish_time == 0 || now < offer.finish_time) return false;
    if(offer.active) {
        game_add(state, static_cast<ResourceId>(offer.output_resource), offer.output_amount);
        game_add(state, RES_CHEESE, bn_from_u32(1));
    }
    /* If game_tick_second() ran first it already paid and set active=false. */
    increment_progress(state, PROG_TRADE_COMPLETIONS, 65535U);
    if(systems_trade_completions(state) % 10U == 0)
        game_add(state, RES_GEMS, bn_from_u32(1U + systems_trade_completions(state) / 100U));
    clear_offer(offer);
    return action_complete(state);
}

bool systems_craft_item(GameState &state, uint8_t slot) {
    if(!game_system_unlocked(state, SYS_CRAFTING) || slot >= MAX_CRAFTED_ITEMS ||
       valid_item(state.crafted[slot])) return false;
    uint8_t count = 0;
    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) if(valid_item(state.crafted[i])) count++;
    BigNum cheese = content_cost(bn_from_u32(25), 1600U, count);
    BigNum materials = bn_from_u32(50U * (static_cast<uint32_t>(count) + 1U));
    if(!spend_pair(state, RES_CHEESE, cheese, RES_MATERIALS, materials)) return false;

    uint32_t quality = 1U + game_rand(state) % 80U;
    quality += static_cast<uint32_t>(game_effect_level(state, EFFECT_CRAFT_QUALITY)) * 2U;
    if(quality > 100U) quality = 100U;
    CraftedItem &item = state.crafted[slot];
    ResourceId leaf = AREA_DEFS[state.current_area].leaf;
    item.leaf_tier = leaf <= RES_ELECTRICAL ? static_cast<uint8_t>(leaf) : 0;
    item.quality = static_cast<uint8_t>(quality);
    item.property = static_cast<uint8_t>(game_rand(state) % CRAFT_PROPERTY_COUNT);
    item.level = 0;
    item.equipped = false;
    return true;
}

bool systems_equip_item(GameState &state, uint8_t slot) {
    if(!game_system_unlocked(state, SYS_EQUIPMENT) || slot >= MAX_CRAFTED_ITEMS ||
       !valid_item(state.crafted[slot])) return false;
    uint8_t property = state.crafted[slot].property;
    bool new_value = !state.crafted[slot].equipped;
    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        if(i != slot && valid_item(state.crafted[i]) && state.crafted[i].property == property)
            state.crafted[i].equipped = false;
    }
    state.crafted[slot].equipped = new_value;
    return true;
}

bool systems_upgrade_item(GameState &state, uint8_t slot) {
    if(!game_system_unlocked(state, SYS_CRAFTING) || slot >= MAX_CRAFTED_ITEMS ||
       !valid_item(state.crafted[slot]) || state.crafted[slot].level >= 50U) return false;
    CraftedItem &item = state.crafted[slot];
    BigNum cheese = content_cost(bn_from_u32(10U + item.quality), 1450U, item.level);
    BigNum materials = content_cost(bn_from_u32(25U), 1350U, item.level);
    if(!spend_pair(state, RES_CHEESE, cheese, RES_MATERIALS, materials)) return false;
    item.level++;
    return true;
}

uint16_t systems_alchemy_mastery(const GameState &state) {
    return progress(state, PROG_ALCHEMY_MASTERY);
}

bool systems_brew(GameState &state, AlchemyRecipe recipe) {
    if(!game_system_unlocked(state, SYS_ALCHEMY) || recipe >= ALCHEMY_RECIPE_COUNT) return false;
    const AlchemyDef &definition = ALCHEMY_DEFS[recipe];
    if(!game_system_unlocked(state, definition.extra_requirement)) return false;
    BigNum first = bn_from_u32(definition.first_amount);
    BigNum second = bn_from_u32(definition.second_amount);
    if(!spend_pair(state, definition.first_resource, first,
                   definition.second_resource, second)) return false;
    uint32_t bonus = 1000U + (systems_alchemy_mastery(state) > 500U ? 500U : systems_alchemy_mastery(state)) * 2U;
    bonus = static_cast<uint32_t>(static_cast<uint64_t>(bonus) *
                                  combined_bonus(state, CRAFT_REWARD, CARD_REWARD) / 1000U);
    game_add(state, definition.output_resource,
             bn_scale_permille(bn_from_u32(definition.output_amount), bonus));
    increment_progress(state, PROG_ALCHEMY_MASTERY);
    return action_complete(state);
}

uint16_t systems_artifacts_found(const GameState &state) {
    return progress(state, PROG_ARTIFACTS_FOUND);
}

bool systems_start_artifact_search(GameState &state, uint32_t now) {
    if(!game_system_unlocked(state, SYS_ARTIFACTS) || state.artifact_ready_time != 0) return false;
    uint16_t found = systems_artifacts_found(state);
    BigNum cost = content_cost(bn_from_u32(250), 1200U, found > 200U ? 200U : found);
    if(!game_spend(state, RES_MATERIALS, cost)) return false;
    uint32_t speed = equipped_bonus(state, CRAFT_LUCK);
    uint32_t duration = 120000U / speed;
    if(duration < 20U) duration = 20U;
    state.artifact_ready_time = deadline_after(now, duration);
    return true;
}

bool systems_collect_artifact(GameState &state, uint32_t now) {
    if(!game_system_unlocked(state, SYS_ARTIFACTS) || state.artifact_ready_time == 0 ||
       now < state.artifact_ready_time) return false;
    state.artifact_ready_time = 0;
    uint16_t found = systems_artifacts_found(state);
    uint32_t roll = game_rand(state) % 100U;
    ResourceId reward_resource;
    uint32_t base;
    if(roll < 45U) {
        reward_resource = RES_ESSENCE;
        base = 5U;
    } else if(roll < 75U) {
        reward_resource = RES_MULCH;
        base = 50U;
    } else if(roll < 95U) {
        reward_resource = RES_CARD_PARTS;
        base = 10U;
    } else {
        reward_resource = RES_GEMS;
        base = 1U;
    }
    BigNum amount = bn_mul_u32(bn_from_u32(base), 1U + found / 5U);
    amount = bn_scale_permille(amount, combined_bonus(state, CRAFT_LUCK, CARD_REWARD));
    game_add(state, reward_resource, amount);
    increment_progress(state, PROG_ARTIFACTS_FOUND);
    return action_complete(state);
}

BigNum systems_tower_cost(const GameState &state) {
    uint16_t floor = state.tower_floor > 1000U ? 1000U : state.tower_floor;
    return content_cost(bn_from_u32(10), 1060U, floor);
}

bool systems_advance_tower(GameState &state) {
    if(!game_system_unlocked(state, SYS_TOWER) || state.tower_floor >= 1000U) return false;
    if(!game_spend(state, RES_BLC, systems_tower_cost(state))) return false;
    state.tower_floor++;
    uint32_t multiplier = 1U + state.tower_floor / 10U;
    BigNum reward = bn_mul_u32(bn_from_u32(50), multiplier);
    reward = bn_scale_permille(reward, combat_bonus(state));
    reward = bn_scale_permille(reward, card_bonus(state, CARD_LEAF));
    game_add(state, RES_SILICON, reward);
    if(state.tower_floor >= 100U) {
        static constexpr ResourceId GEM_LEAVES[] = {
                RES_AMBER, RES_AMETHYST, RES_EMERALD, RES_KYANITE,
                RES_RHODONITE, RES_RUBY, RES_TEKTITE
        };
        ResourceId gem = GEM_LEAVES[(state.tower_floor / 10U) % 7U];
        game_add(state, gem, bn_div_u32(reward, 5U));
    }
    if(state.tower_floor % 10U == 0) game_add(state, RES_SOULS, bn_from_u32(1U + state.tower_floor / 20U));
    return action_complete(state);
}

BigNum systems_pyramid_cost(const GameState &state) {
    uint16_t floor = state.pyramid_floor > 500U ? 500U : state.pyramid_floor;
    return content_cost(bn_from_u32(1), 1050U, floor);
}

bool systems_advance_pyramid(GameState &state) {
    if(!game_system_unlocked(state, SYS_PYRAMID) || state.pyramid_floor >= 500U) return false;
    if(!game_spend(state, RES_MLC, systems_pyramid_cost(state))) return false;
    state.pyramid_floor++;
    BigNum sand = bn_mul_u32(bn_from_u32(100), state.pyramid_floor);
    sand = bn_scale_permille(sand, combat_bonus(state));
    sand = bn_scale_permille(sand, card_bonus(state, CARD_LEAF));
    game_add(state, RES_SAND, sand);
    game_add(state, RES_SOULS, bn_from_u32(1U + state.pyramid_floor / 10U));
    return action_complete(state);
}

uint16_t systems_borbventure_rank(const GameState &state) {
    return progress(state, PROG_BORBVENTURE_RANK);
}

bool systems_start_borbventure(GameState &state, uint32_t now) {
    if(!game_system_unlocked(state, SYS_BORBVENTURES) || state.borbventure_finish_time != 0) return false;
    uint16_t rank = systems_borbventure_rank(state);
    BigNum cost = content_cost(bn_from_u32(100), 1150U, rank > 200U ? 200U : rank);
    if(!game_spend(state, RES_BORBS, cost)) return false;
    uint32_t duration = rank >= 150U ? 30U : 180U - rank;
    state.borbventure_finish_time = deadline_after(now, duration);
    return true;
}

bool systems_complete_borbventure(GameState &state, uint32_t now) {
    if(!game_system_unlocked(state, SYS_BORBVENTURES) || state.borbventure_finish_time == 0 ||
       now < state.borbventure_finish_time) return false;
    state.borbventure_finish_time = 0;
    uint16_t rank = systems_borbventure_rank(state);
    BigNum cost = content_cost(bn_from_u32(100), 1150U, rank > 200U ? 200U : rank);
    BigNum borbs = bn_scale_permille(cost, 2500U);
    borbs = bn_scale_permille(borbs, combined_bonus(state, CRAFT_REWARD, CARD_REWARD));
    game_add(state, RES_BORBS, borbs);
    game_add(state, RES_CARD_PARTS, bn_from_u32(5U + rank / 2U));
    if(game_rand(state) % 10U == 0) game_add(state, RES_GEMS, bn_from_u32(1));
    increment_progress(state, PROG_BORBVENTURE_RANK, 500U);
    return action_complete(state);
}

uint16_t systems_card_level(const GameState &state, CardType card) {
    if(card >= CARD_TYPE_COUNT) return 0;
    uint16_t level = progress(state, card_slot(card));
    return level > 200U ? 200U : level;
}

BigNum systems_card_cost(const GameState &state, CardType card) {
    if(card >= CARD_TYPE_COUNT) return bn_zero();
    return content_cost(bn_from_u32(25), 1800U, systems_card_level(state, card));
}

bool systems_upgrade_card(GameState &state, CardType card) {
    if(!game_system_unlocked(state, SYS_CARDS) || card >= CARD_TYPE_COUNT ||
       systems_card_level(state, card) >= 200U) return false;
    if(!game_spend(state, RES_CARD_PARTS, systems_card_cost(state, card))) return false;
    increment_progress(state, card_slot(card), 200U);
    return true;
}

uint16_t systems_dice_tier(const GameState &state) {
    uint16_t tier = progress(state, PROG_DICE_TIER);
    return tier > 50U ? 50U : tier;
}

BigNum systems_dice_upgrade_cost(const GameState &state) {
    return content_cost(bn_from_u32(100), 2500U, systems_dice_tier(state));
}

bool systems_upgrade_dice(GameState &state) {
    if(!game_system_unlocked(state, SYS_DICE) || systems_dice_tier(state) >= 50U) return false;
    if(!game_spend(state, RES_DICE_POINTS, systems_dice_upgrade_cost(state))) return false;
    increment_progress(state, PROG_DICE_TIER, 50U);
    return true;
}

bool systems_roll_dice(GameState &state, uint8_t *total_out) {
    if(!game_system_unlocked(state, SYS_DICE)) return false;
    uint16_t tier = systems_dice_tier(state);
    BigNum cost = bn_from_u32(10U + tier * 2U);
    if(!game_spend(state, RES_BORBS, cost)) return false;
    uint8_t first = static_cast<uint8_t>(1U + game_rand(state) % 6U);
    uint8_t second = static_cast<uint8_t>(1U + game_rand(state) % 6U);
    uint8_t third = static_cast<uint8_t>(1U + game_rand(state) % 6U);
    uint8_t total = static_cast<uint8_t>(first + second + third);
    if(total_out) *total_out = total;
    uint32_t points = static_cast<uint32_t>(total) * (tier + 1U);
    if(first == second && second == third) {
        points *= 10U;
        game_add(state, RES_CARD_PARTS, bn_from_u32(5U + tier));
        if(first == 6U) game_add(state, RES_SOULS, bn_from_u32(1U + tier / 5U));
    }
    game_add(state, RES_DICE_POINTS, bn_from_u32(points));
    if(tier >= 10U && total >= 12U) game_add(state, RES_AZURITE, bn_from_u32(1U + tier / 10U));
    if(tier >= 25U && total >= 15U) game_add(state, RES_NIOBIUM, bn_from_u32(1U + tier / 25U));
    return action_complete(state);
}

BigNum systems_death_book_cost(const GameState &state) {
    uint16_t level = state.death_book_level > 500U ? 500U : state.death_book_level;
    return content_cost(bn_from_u32(10), 1650U, level);
}

bool systems_upgrade_death_book(GameState &state) {
    if(!game_system_unlocked(state, SYS_DEATH_BOOK) || state.death_book_level >= 500U) return false;
    if(!game_spend(state, RES_SOULS, systems_death_book_cost(state))) return false;
    state.death_book_level++;
    return true;
}

BigNum systems_mine_cost(const GameState &state) {
    uint16_t depth = state.mine_depth > 1000U ? 1000U : state.mine_depth;
    return content_cost(bn_from_u32(100), 1125U, depth);
}

bool systems_delve_mine(GameState &state) {
    if(!game_system_unlocked(state, SYS_MINES) || state.mine_depth >= 1000U) return false;
    if(!game_spend(state, RES_MATERIALS, systems_mine_cost(state))) return false;
    state.mine_depth++;
    uint32_t roll = game_rand(state) % 100U;
    uint32_t depth = state.mine_depth;
    if(roll < 55U) game_add(state, RES_ESSENCE, bn_from_u32(2U + depth / 3U));
    else if(roll < 85U) game_add(state, RES_MULCH, bn_from_u32(25U + depth * 2U));
    else game_add(state, RES_CARD_PARTS, bn_from_u32(3U + depth / 5U));
    if(depth % 10U == 0) game_add(state, RES_SOULS, bn_from_u32(1U + depth / 20U));
    return action_complete(state);
}

bool systems_fish(GameState &state) {
    if(!game_system_unlocked(state, SYS_FISHING) || state.fishing_level >= 1000U) return false;
    uint16_t level = state.fishing_level;
    BigNum cost = content_cost(bn_from_u32(25), 1020U, level);
    if(!game_spend(state, RES_MATERIALS, cost)) return false;
    uint32_t roll = game_rand(state) % 100U;
    uint32_t scale = 1U + level / 10U;
    if(roll < 40U) game_add(state, RES_CHEESE, bn_mul_u32(bn_from_u32(10), scale));
    else if(roll < 70U) game_add(state, RES_BORBS, bn_mul_u32(bn_from_u32(20), scale));
    else if(roll < 90U) game_add(state, RES_CARD_PARTS, bn_mul_u32(bn_from_u32(5), scale));
    else if(roll < 98U) game_add(state, RES_DICE_POINTS, bn_mul_u32(bn_from_u32(10), scale));
    else game_add(state, RES_GEMS, bn_from_u32(1U + level / 100U));
    state.fishing_level++;
    return action_complete(state);
}

bool systems_bank_deposit(GameState &state, BigNum amount) {
    if(!game_system_unlocked(state, SYS_BANKS) || !bn_valid(state.bank_balance) ||
       !bn_valid(amount) || bn_is_zero(amount)) return false;
    if(!game_spend(state, RES_ULC, amount)) return false;
    bool was_empty = bn_is_zero(state.bank_balance);
    state.bank_balance = bn_add(state.bank_balance, amount);
    if(was_empty) set_bank_last_tick(state, state.play_seconds);
    return true;
}

bool systems_bank_claim_interest(GameState &state) {
    if(!game_system_unlocked(state, SYS_BANKS) || !bn_valid(state.bank_balance) ||
       bn_is_zero(state.bank_balance)) return false;
    uint32_t last = bank_last_tick(state);
    uint32_t elapsed = state.play_seconds - last;
    uint32_t periods = elapsed / 60U;
    if(periods == 0) return false;
    if(periods > 720U) periods = 720U;
    uint32_t rate = 5U + game_effect_level(state, EFFECT_BANK);
    uint32_t total_rate = static_cast<uint32_t>(periods) * rate;
    if(total_rate > 5000U) total_rate = 5000U;
    BigNum interest = bn_scale_permille(state.bank_balance, total_rate);
    state.bank_balance = bn_add(state.bank_balance, interest);
    state.lifetime[RES_ULC] = bn_add(state.lifetime[RES_ULC], interest);
    set_bank_last_tick(state, last + periods * 60U);
    return action_complete(state);
}

bool systems_bank_withdraw(GameState &state) {
    if(!game_system_unlocked(state, SYS_BANKS) || !bn_valid(state.bank_balance) ||
       bn_is_zero(state.bank_balance)) return false;
    /* Principal was counted in lifetime when earned; interest is counted on claim. */
    state.resources[RES_ULC] = bn_add(state.resources[RES_ULC], state.bank_balance);
    state.bank_balance = bn_zero();
    set_bank_last_tick(state, state.play_seconds);
    return true;
}

uint16_t systems_soul_forge_level(const GameState &state) {
    uint16_t level = progress(state, PROG_SOUL_FORGE);
    return level > 500U ? 500U : level;
}

bool systems_forge_soul(GameState &state) {
    if(!game_system_unlocked(state, SYS_SOUL_FORGE) || systems_soul_forge_level(state) >= 500U) return false;
    uint16_t level = systems_soul_forge_level(state);
    uint32_t threshold = level >= 80U ? 10U : 50U - level / 2U;
    if(game_spend(state, RES_EMPTY_SOUL_LEAVES, bn_from_u32(threshold))) {
        game_add(state, RES_SOUL_LEAVES, bn_from_u32(1U + level / 25U));
        increment_progress(state, PROG_SOUL_FORGE, 500U);
        return action_complete(state);
    }
    BigNum souls = content_cost(bn_from_u32(25), 1300U, level);
    BigNum essence = content_cost(bn_from_u32(100), 1150U, level);
    if(!spend_pair(state, RES_SOULS, souls, RES_ESSENCE, essence)) return false;
    BigNum energy = bn_mul_u32(bn_from_u32(100), 1U + level);
    energy = bn_scale_permille(energy, combined_bonus(state, CRAFT_REWARD, CARD_REWARD));
    game_add(state, RES_ENERGY, energy);
    game_add(state, RES_EMPTY_SOUL_LEAVES, bn_from_u32(5U + level));
    increment_progress(state, PROG_SOUL_FORGE, 500U);
    return action_complete(state);
}

uint16_t systems_reactor_level(const GameState &state) {
    uint16_t level = progress(state, PROG_REACTOR);
    return level > 500U ? 500U : level;
}

bool systems_run_quark_reactor(GameState &state) {
    if(!game_system_unlocked(state, SYS_QUARK_REACTOR) || systems_reactor_level(state) >= 500U) return false;
    uint16_t level = systems_reactor_level(state);
    BigNum energy = content_cost(bn_from_u32(100), 1080U, level);
    if(!game_spend(state, RES_ENERGY, energy)) return false;
    BigNum quarks = content_cost(bn_from_u32(100000), 1120U, level);
    quarks = bn_scale_permille(quarks, game_effect_permille(state, EFFECT_QUARK));
    quarks = bn_scale_permille(quarks, card_bonus(state, CARD_REWARD));
    game_add(state, RES_QUARKS, quarks);
    game_add(state, RES_QUARK_LEAVES, bn_div_u32(quarks, 1000U));
    increment_progress(state, PROG_REACTOR, 500U);
    return action_complete(state);
}

bool systems_quarkstige(GameState &state) {
    if(!game_system_unlocked(state, SYS_QUARK_REACTOR) || !game_can_reset(state, RESET_QUARKSTIGE)) return false;
    return game_apply_reset(state, RESET_QUARKSTIGE);
}

uint16_t systems_shadow_level(const GameState &state) {
    uint16_t level = progress(state, PROG_SHADOW);
    return level > 500U ? 500U : level;
}

bool systems_form_shadow_crystal(GameState &state) {
    if(!game_system_unlocked(state, SYS_SHADOW_CRYSTAL) || systems_shadow_level(state) >= 500U) return false;
    uint16_t level = systems_shadow_level(state);
    BigNum blobs = bn_from_u32(1U + level / 10U);
    BigNum energy = content_cost(bn_from_u32(1000), 1100U, level);
    if(!spend_pair(state, RES_QUANTUM_BLOBS, blobs, RES_ENERGY, energy)) return false;
    BigNum crystals = bn_from_u32(1U + level / 5U);
    crystals = bn_scale_permille(crystals, combined_bonus(state, CRAFT_REWARD, CARD_REWARD));
    game_add(state, RES_SHADOW_CRYSTALS, crystals);
    increment_progress(state, PROG_SHADOW, 500U);
    return action_complete(state);
}

BigNum systems_galaxy_cost(const GameState &state) {
    if(state.galaxy_stage == 0) return bn_from_u32(10);
    if(state.galaxy_stage == 1) return bn_from_u32(1);
    uint16_t stage = state.galaxy_stage > 102U ? 100U : static_cast<uint16_t>(state.galaxy_stage - 2U);
    return content_cost(bn_from_u32(10), 2000U, stage);
}

bool systems_advance_galaxy(GameState &state) {
    if(!game_system_unlocked(state, SYS_GALAXIES) || state.galaxy_stage >= 100U) return false;
    bool spent = false;
    if(state.galaxy_stage == 0) {
        spent = spend_pair(state, RES_ULC, systems_galaxy_cost(state), RES_SOULS, bn_from_u32(100));
    } else if(state.galaxy_stage == 1) {
        spent = spend_pair(state, RES_QUANTUM_BLOBS, systems_galaxy_cost(state),
                           RES_ENERGY, bn_from_u32(1000));
    } else {
        BigNum ulc = content_cost(bn_from_u32(10), 1500U,
                                  state.galaxy_stage > 50U ? 50U : state.galaxy_stage);
        spent = spend_pair(state, RES_SHADOW_CRYSTALS, systems_galaxy_cost(state), RES_ULC, ulc);
    }
    if(!spent) return false;
    state.galaxy_stage++;
    game_add(state, RES_GEMS, bn_from_u32(5U + state.galaxy_stage));
    game_add(state, RES_ENERGY, bn_mul_u32(bn_from_u32(100), state.galaxy_stage));
    return action_complete(state);
}

namespace {

bool harvest_fruit(GameState &state) {
    if(!game_system_unlocked(state, SYS_FRUIT)) return false;
    uint16_t level = progress(state, PROG_FRUIT);
    if(level >= 500U) return false;
    ResourceId leaf = AREA_DEFS[state.current_area].leaf;
    BigNum cost = content_cost(bn_from_u32(1000), 1100U, level);
    if(!game_spend(state, leaf, cost)) return false;
    uint32_t bonus = game_effect_permille(state, EFFECT_FRUIT);
    BigNum materials = bn_mul_u32(bn_from_u32(5), 1U + level);
    materials = bn_scale_permille(materials, bonus);
    materials = bn_scale_permille(materials, combined_bonus(state, CRAFT_REWARD, CARD_REWARD));
    game_add(state, RES_MATERIALS, materials);
    if(game_rand(state) % 25U == 0) game_add(state, RES_GEMS, bn_from_u32(1));
    increment_progress(state, PROG_FRUIT, 500U);
    return action_complete(state);
}

bool discover_unique_leaf(GameState &state) {
    if(!game_system_unlocked(state, SYS_UNIQUE_LEAVES)) return false;
    uint16_t found = progress(state, PROG_UNIQUE_LEAVES);
    if(found >= 32U) return false;
    ResourceId leaf = AREA_DEFS[state.current_area].leaf;
    BigNum cost = content_cost(bn_from_u32(100000), 1300U, found);
    if(!game_spend(state, leaf, cost)) return false;
    increment_progress(state, PROG_UNIQUE_LEAVES, 32U);
    game_add(state, RES_GEMS, bn_from_u32(1U + found / 4U));
    game_add(state, RES_SHARDS, bn_from_u32(1U + found / 8U));
    return action_complete(state);
}

bool shovel_once(GameState &state) {
    if(!game_system_unlocked(state, SYS_SHOVELLING) || state.mine_depth >= 1000U) return false;
    uint16_t depth = state.mine_depth > 500U ? 500U : state.mine_depth;
    BigNum cost = content_cost(bn_from_u32(50), 1080U, depth);
    if(!game_spend(state, RES_MATERIALS, cost)) return false;
    state.mine_depth++;
    BigNum coal = bn_mul_u32(bn_from_u32(10), 1U + state.mine_depth / 2U);
    coal = bn_scale_permille(coal, combined_bonus(state, CRAFT_LUCK, CARD_REWARD));
    game_add(state, RES_COAL_LEAVES, coal);
    if(state.mine_depth % 5U == 0) game_add(state, RES_COAL_BARS, bn_from_u32(1U + state.mine_depth / 25U));
    return action_complete(state);
}

bool inscribe_scroll(GameState &state) {
    if(!game_system_unlocked(state, SYS_SCROLLS)) return false;
    uint16_t level = progress(state, PROG_SCROLLS);
    if(level >= 500U) return false;
    BigNum materials = content_cost(bn_from_u32(100), 1125U, level);
    BigNum essence = content_cost(bn_from_u32(1), 1050U, level);
    if(!spend_pair(state, RES_MATERIALS, materials, RES_ESSENCE, essence)) return false;
    BigNum reward = bn_mul_u32(bn_from_u32(1000), 1U + level);
    reward = bn_scale_permille(reward, game_effect_permille(state, EFFECT_SCROLL));
    reward = bn_scale_permille(reward, card_bonus(state, CARD_LEAF));
    game_add(state, AREA_DEFS[state.current_area].leaf, reward);
    increment_progress(state, PROG_SCROLLS, 500U);
    return action_complete(state);
}

bool open_chest(GameState &state) {
    if(!game_system_unlocked(state, SYS_CHESTS)) return false;
    uint16_t opened = progress(state, PROG_CHESTS);
    if(opened >= 1000U) return false;
    BigNum cost = content_cost(bn_from_u32(100), 1100U, opened > 500U ? 500U : opened);
    if(!game_spend(state, RES_MULCH, cost)) return false;
    uint32_t roll = game_rand(state) % 100U;
    uint32_t scale = 1U + opened / 10U;
    if(roll < 35U) game_add(state, RES_RELIC_FRAGMENTS, bn_mul_u32(bn_from_u32(2), scale));
    else if(roll < 60U) game_add(state, RES_CARD_PARTS, bn_mul_u32(bn_from_u32(10), scale));
    else if(roll < 80U) game_add(state, RES_BEER, bn_mul_u32(bn_from_u32(2), scale));
    else if(roll < 95U) game_add(state, RES_SHIP_FUEL, bn_mul_u32(bn_from_u32(3), scale));
    else game_add(state, RES_GEMS, bn_from_u32(1U + opened / 100U));
    increment_progress(state, PROG_CHESTS);
    return action_complete(state);
}

bool fuse_crafted_items(GameState &state) {
    if(!game_system_unlocked(state, SYS_FUSION_ASCENSION)) return false;
    for(uint8_t first = 0; first < MAX_CRAFTED_ITEMS; first++) {
        if(!valid_item(state.crafted[first])) continue;
        for(uint8_t second = static_cast<uint8_t>(first + 1U); second < MAX_CRAFTED_ITEMS; second++) {
            if(!valid_item(state.crafted[second]) ||
               state.crafted[first].property != state.crafted[second].property) continue;
            uint32_t sum_quality = static_cast<uint32_t>(state.crafted[first].quality) +
                                   state.crafted[second].quality;
            BigNum cost = bn_from_u32(25U + sum_quality);
            if(!game_spend(state, RES_ESSENCE, cost)) continue;
            uint32_t quality = sum_quality / 2U + 10U;
            if(quality > 100U) quality = 100U;
            state.crafted[first].quality = static_cast<uint8_t>(quality);
            uint16_t level = static_cast<uint16_t>(state.crafted[first].level) +
                             state.crafted[second].level / 2U + 1U;
            state.crafted[first].level = static_cast<uint8_t>(level > 50U ? 50U : level);
            state.crafted[first].equipped = state.crafted[first].equipped || state.crafted[second].equipped;
            state.crafted[second] = {0, 0, 0, 0, false};
            return true;
        }
    }
    /* With no pair available, a mature leaf can ascend into the next tier. */
    for(uint8_t slot = 0; slot < MAX_CRAFTED_ITEMS; slot++) {
        CraftedItem &item = state.crafted[slot];
        if(!valid_item(item) || item.level < 25U || item.quality < 80U ||
           item.leaf_tier >= RES_ELECTRICAL) continue;
        BigNum shards = bn_from_u32(1U + item.leaf_tier / 2U);
        if(!game_spend(state, RES_SHARDS, shards)) continue;
        item.leaf_tier++;
        item.level = 0;
        uint16_t quality = static_cast<uint16_t>(item.quality) + 5U;
        item.quality = static_cast<uint8_t>(quality > 100U ? 100U : quality);
        return true;
    }
    return false;
}

bool leafscend(GameState &state) {
    if(!game_system_unlocked(state, SYS_LEAFSCENSION)) return false;
    uint16_t level = progress(state, PROG_LEAFSCENSION);
    if(level >= 500U) return false;
    ResourceId leaf = AREA_DEFS[state.current_area].leaf;
    BigNum cost = content_cost(bn_from_u32(1000000), 1500U, level);
    if(!game_spend(state, leaf, cost)) return false;
    BigNum shards = bn_from_u32(1U + level / 5U);
    shards = bn_scale_permille(shards, combined_bonus(state, CRAFT_REWARD, CARD_REWARD));
    game_add(state, RES_SHARDS, shards);
    increment_progress(state, PROG_LEAFSCENSION, 500U);
    return action_complete(state);
}

bool restore_relic(GameState &state) {
    if(!game_system_unlocked(state, SYS_RELICS)) return false;
    uint16_t level = progress(state, PROG_RELICS);
    if(level >= 500U) return false;
    BigNum cost = content_cost(bn_from_u32(10), 1400U, level);
    if(!game_spend(state, RES_RELIC_FRAGMENTS, cost)) return false;
    increment_progress(state, PROG_RELICS, 500U);
    game_add(state, RES_SHARDS, bn_from_u32(1U + level / 10U));
    return action_complete(state);
}

bool polish_mirror(GameState &state) {
    if(!game_system_unlocked(state, SYS_MIRRORS)) return false;
    uint16_t level = progress(state, PROG_MIRRORS);
    if(level >= 500U) return false;
    BigNum cost = content_cost(bn_from_u32(5), 1350U, level);
    if(!game_spend(state, RES_SHARDS, cost)) return false;
    BigNum reflected = content_cost(bn_from_u32(1000000), 1400U, level);
    reflected = bn_scale_permille(reflected, card_bonus(state, CARD_LEAF));
    game_add(state, AREA_DEFS[state.current_area].leaf, reflected);
    increment_progress(state, PROG_MIRRORS, 500U);
    return action_complete(state);
}

bool raid_soul_crypt(GameState &state) {
    if(!game_system_unlocked(state, SYS_SOUL_CRYPT)) return false;
    uint16_t level = progress(state, PROG_SOUL_CRYPT);
    if(level >= 1000U) return false;
    BigNum cost = content_cost(bn_from_u32(500), 1125U, level > 500U ? 500U : level);
    if(!game_spend(state, RES_ENERGY, cost)) return false;
    BigNum souls = bn_mul_u32(bn_from_u32(10), 1U + level);
    souls = bn_scale_permille(souls, combat_bonus(state));
    game_add(state, RES_SOULS, souls);
    game_add(state, RES_EMPTY_SOUL_LEAVES, bn_mul_u32(bn_from_u32(5), 1U + level));
    game_add(state, RES_CURSES, bn_from_u32(1U + level / 10U));
    increment_progress(state, PROG_SOUL_CRYPT);
    return action_complete(state);
}

bool fight_leafton_pit(GameState &state) {
    if(!game_system_unlocked(state, SYS_LEAFTON_PIT)) return false;
    uint16_t level = progress(state, PROG_LEAFTON_PIT);
    if(level >= 500U) return false;
    BigNum blobs = bn_from_u32(1U + level / 10U);
    if(!game_spend(state, RES_QUANTUM_BLOBS, blobs)) return false;
    BigNum tokens = bn_mul_u32(bn_from_u32(5), 1U + level);
    tokens = bn_scale_permille(tokens, combat_bonus(state));
    ResourceId token = game_rand(state) % 5U == 0 ? RES_GOLD_TOKENS : RES_SILVER_TOKENS;
    game_add(state, token, tokens);
    game_add(state, RES_CURSES, bn_from_u32(2U + level / 5U));
    increment_progress(state, PROG_LEAFTON_PIT, 500U);
    return action_complete(state);
}

bool visit_pub(GameState &state) {
    if(!game_system_unlocked(state, SYS_PUB)) return false;
    if(bn_is_zero(state.resources[RES_BEER])) {
        if(!spend_pair(state, RES_CHEESE, bn_from_u32(100), RES_BORBS, bn_from_u32(50))) return false;
        game_add(state, RES_BEER, bn_from_u32(5));
        return action_complete(state);
    }
    if(!game_spend(state, RES_BEER, bn_from_u32(1))) return false;
    uint16_t level = progress(state, PROG_PUB);
    uint32_t roll = game_rand(state) % 100U;
    if(roll < 50U) game_add(state, RES_PARTY_TOKENS, bn_from_u32(2U + level / 5U));
    else if(roll < 80U) game_add(state, RES_DICE_POINTS, bn_from_u32(10U + level));
    else if(roll < 97U) game_add(state, RES_SILVER_TOKENS, bn_from_u32(3U + level / 3U));
    else game_add(state, RES_GEMS, bn_from_u32(1U + level / 100U));
    increment_progress(state, PROG_PUB, 1000U);
    return action_complete(state);
}

bool improve_house(GameState &state) {
    if(!game_system_unlocked(state, SYS_HOUSE)) return false;
    uint16_t level = progress(state, PROG_HOUSE);
    if(level >= 500U) return false;
    BigNum materials = content_cost(bn_from_u32(500), 1250U, level);
    BigNum cheese = content_cost(bn_from_u32(100), 1150U, level);
    if(!spend_pair(state, RES_MATERIALS, materials, RES_CHEESE, cheese)) return false;
    increment_progress(state, PROG_HOUSE, 500U);
    game_add(state, RES_ENERGY, bn_from_u32(25U + level * 5U));
    if((level + 1U) % 10U == 0) game_add(state, RES_GEMS, bn_from_u32(1U + level / 50U));
    return action_complete(state);
}

bool work_harbor(GameState &state) {
    if(!game_system_unlocked(state, SYS_HARBOR)) return false;
    uint16_t level = progress(state, PROG_HARBOR);
    if(level >= 500U) return false;
    BigNum leaves = content_cost(bn_from_u32(100), 1100U, level);
    if(!game_spend(state, RES_WATER_LEAVES, leaves)) return false;
    uint32_t harbor = game_effect_permille(state, EFFECT_HARBOR);
    BigNum crystals = bn_scale_permille(bn_from_u32(1U + level / 5U), harbor);
    game_add(state, RES_WATER_CRYSTALS, crystals);
    game_add(state, RES_SHIP_FUEL, bn_from_u32(2U + level / 10U));
    increment_progress(state, PROG_HARBOR, 500U);
    return action_complete(state);
}

bool complete_harbor_job(GameState &state) {
    if(!game_system_unlocked(state, SYS_JOBS)) return false;
    uint16_t level = progress(state, PROG_JOBS);
    if(level >= 1000U) return false;
    BigNum energy = content_cost(bn_from_u32(100), 1075U, level > 500U ? 500U : level);
    if(!game_spend(state, RES_ENERGY, energy)) return false;
    uint32_t bonus = game_effect_permille(state, EFFECT_HARBOR);
    game_add(state, RES_FISH_CREDITS,
             bn_scale_permille(bn_from_u32(10U + level), bonus));
    game_add(state, RES_SHIP_FUEL,
             bn_scale_permille(bn_from_u32(5U + level / 2U), bonus));
    game_add(state, RES_SILVER_TOKENS, bn_from_u32(1U + level / 10U));
    increment_progress(state, PROG_JOBS);
    return action_complete(state);
}

bool launch_ship(GameState &state) {
    if(!game_system_unlocked(state, SYS_SHIPS)) return false;
    uint16_t level = progress(state, PROG_SHIPS);
    if(level >= 1000U) return false;
    BigNum fuel = content_cost(bn_from_u32(10), 1050U, level > 500U ? 500U : level);
    if(!game_spend(state, RES_SHIP_FUEL, fuel)) return false;
    uint32_t roll = game_rand(state) % 100U;
    uint32_t scale = 1U + level / 5U;
    if(roll < 45U) game_add(state, RES_WATER_CRYSTALS, bn_mul_u32(bn_from_u32(2), scale));
    else if(roll < 80U) game_add(state, RES_RELIC_FRAGMENTS, bn_mul_u32(bn_from_u32(3), scale));
    else if(roll < 97U) game_add(state, RES_GOLD_TOKENS, bn_from_u32(1U + level / 20U));
    else game_add(state, RES_GEMS, bn_from_u32(2U + level / 100U));
    increment_progress(state, PROG_SHIPS);
    return action_complete(state);
}

bool milestone_reached(const GameState &state, uint8_t milestone) {
    switch(milestone) {
        case 0: return bn_compare(state.lifetime[RES_LEAVES], bn_from_u32(1000000)) >= 0;
        case 1: return !bn_is_zero(state.lifetime[RES_BLC]);
        case 2: return state.tower_floor >= 100U;
        case 3: return !bn_is_zero(state.lifetime[RES_MLC]);
        case 4: return state.pyramid_floor >= 50U;
        case 5: return !bn_is_zero(state.lifetime[RES_ULC]);
        case 6: return state.galaxy_stage >= 1U;
        case 7: return !bn_is_zero(state.lifetime[RES_QUANTUM_BLOBS]);
        case 8: return !bn_is_zero(state.lifetime[RES_SHADOW_CRYSTALS]);
        case 9: return state.mine_depth >= 100U;
        case 10: return state.fishing_level >= 100U;
        case 11: return !bn_is_zero(state.lifetime[RES_WATER_CRYSTALS]);
        default: return false;
    }
}

bool claim_milestone(GameState &state) {
    if(!game_system_unlocked(state, SYS_MILESTONES)) return false;
    uint16_t &flags = progress(state, PROG_MILESTONE_FLAGS);
    for(uint8_t milestone = 0; milestone < 12U; milestone++) {
        uint16_t mask = static_cast<uint16_t>(1U << milestone);
        if((flags & mask) != 0 || !milestone_reached(state, milestone)) continue;
        flags |= mask;
        game_add(state, RES_GEMS, bn_from_u32(2U + milestone * 2U));
        game_add(state, RES_PARTY_TOKENS, bn_from_u32(5U + milestone * 5U));
        return action_complete(state);
    }
    return false;
}

bool claim_daily(GameState &state, uint32_t now) {
    if(!game_system_unlocked(state, SYS_DAILY)) return false;
    uint32_t day = now / 86400UL;
    uint16_t stamp = static_cast<uint16_t>(day + 1U);
    if(progress(state, PROG_DAILY_STAMP) == stamp) return false;
    progress(state, PROG_DAILY_STAMP) = stamp;
    uint32_t roll = (game_rand(state) ^ day) % 4U;
    ResourceId reward = roll == 0 ? RES_GEMS : roll == 1 ? RES_CHEESE :
                        roll == 2 ? RES_PARTY_TOKENS : RES_MATERIALS;
    uint32_t amount = reward == RES_GEMS ? 2U : 25U;
    game_add(state, reward, bn_from_u32(amount));
    return action_complete(state);
}

bool claim_season(GameState &state, uint32_t now) {
    if(!game_system_unlocked(state, SYS_SEASONS)) return false;
    uint32_t season = now / (30UL * 86400UL);
    uint16_t stamp = static_cast<uint16_t>(season + 1U);
    if(progress(state, PROG_SEASON_STAMP) == stamp) return false;
    progress(state, PROG_SEASON_STAMP) = stamp;
    game_add(state, RES_PARTY_TOKENS, bn_from_u32(100U + (season % 12U) * 10U));
    game_add(state, RES_DUSK_LEAVES, bn_from_u32(25U + (season % 4U) * 25U));
    game_add(state, RES_GEMS, bn_from_u32(5));
    return action_complete(state);
}

bool grow_shadow_tree(GameState &state) {
    if(!game_system_unlocked(state, SYS_SHADOW_TREE)) return false;
    uint16_t level = progress(state, PROG_SHADOW_TREE);
    if(level >= 500U) return false;
    BigNum dusk = content_cost(bn_from_u32(10), 1300U, level);
    BigNum crystals = content_cost(bn_from_u32(1), 1150U, level);
    if(!spend_pair(state, RES_DUSK_LEAVES, dusk, RES_SHADOW_CRYSTALS, crystals)) return false;
    increment_progress(state, PROG_SHADOW_TREE, 500U);
    game_add(state, RES_ENERGY, bn_from_u32(100U + level * 25U));
    return action_complete(state);
}

} // namespace

void systems_tick(GameState &state, uint32_t now) {
    for(uint8_t i = 0; i < MAX_TRADES; i++) systems_complete_trade(state, i, now);
    systems_complete_borbventure(state, now);
}

bool systems_primary_action(GameState &state, SystemId system, uint32_t now) {
    switch(system) {
        case SYS_TRADING:
            for(uint8_t i = 0; i < MAX_TRADES; i++)
                if(systems_complete_trade(state, i, now)) return true;
            for(uint8_t i = 0; i < MAX_TRADES; i++)
                if(systems_start_trade(state, i, now)) return true;
            return systems_generate_trades(state, now);
        case SYS_CRAFTING:
            for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++)
                if(!valid_item(state.crafted[i])) return systems_craft_item(state, i);
            for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++)
                if(systems_upgrade_item(state, i)) return true;
            return false;
        case SYS_EQUIPMENT:
            for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
                if(!valid_item(state.crafted[i]) || state.crafted[i].equipped) continue;
                bool property_in_use = false;
                for(uint8_t other = 0; other < MAX_CRAFTED_ITEMS; other++) {
                    if(state.crafted[other].equipped && valid_item(state.crafted[other]) &&
                       state.crafted[other].property == state.crafted[i].property) {
                        property_in_use = true;
                        break;
                    }
                }
                if(!property_in_use) return systems_equip_item(state, i);
            }
            return false;
        case SYS_ALCHEMY:
            for(int8_t recipe = ALCHEMY_RECIPE_COUNT - 1; recipe >= 0; recipe--)
                if(systems_brew(state, static_cast<AlchemyRecipe>(recipe))) return true;
            return false;
        case SYS_ARTIFACTS:
            return state.artifact_ready_time == 0 ? systems_start_artifact_search(state, now) :
                                                   systems_collect_artifact(state, now);
        case SYS_TOWER: return systems_advance_tower(state);
        case SYS_PYRAMID: return systems_advance_pyramid(state);
        case SYS_BORBVENTURES:
            return state.borbventure_finish_time == 0 ? systems_start_borbventure(state, now) :
                                                       systems_complete_borbventure(state, now);
        case SYS_CARDS: {
            CardType lowest = CARD_LEAF;
            for(uint8_t card = 1; card < CARD_TYPE_COUNT; card++)
                if(systems_card_level(state, static_cast<CardType>(card)) < systems_card_level(state, lowest))
                    lowest = static_cast<CardType>(card);
            return systems_upgrade_card(state, lowest);
        }
        case SYS_DICE:
            if(systems_dice_tier(state) < 50U &&
               bn_compare(state.resources[RES_DICE_POINTS], systems_dice_upgrade_cost(state)) >= 0)
                return systems_upgrade_dice(state);
            return systems_roll_dice(state);
        case SYS_DEATH_BOOK: return systems_upgrade_death_book(state);
        case SYS_MINES: return systems_delve_mine(state);
        case SYS_FISHING: return systems_fish(state);
        case SYS_BANKS:
            if(bn_is_zero(state.bank_balance)) return systems_bank_deposit(state, bn_from_u32(1));
            return systems_bank_claim_interest(state);
        case SYS_SOUL_FORGE: return systems_forge_soul(state);
        case SYS_QUARK_REACTOR: return systems_run_quark_reactor(state);
        case SYS_SHADOW_CRYSTAL: return systems_form_shadow_crystal(state);
        case SYS_GALAXIES: return systems_advance_galaxy(state);
        case SYS_FRUIT: return harvest_fruit(state);
        case SYS_UNIQUE_LEAVES: return discover_unique_leaf(state);
        case SYS_SHOVELLING: return shovel_once(state);
        case SYS_SCROLLS: return inscribe_scroll(state);
        case SYS_CHESTS: return open_chest(state);
        case SYS_FUSION_ASCENSION: return fuse_crafted_items(state);
        case SYS_LEAFSCENSION: return leafscend(state);
        case SYS_RELICS: return restore_relic(state);
        case SYS_MIRRORS: return polish_mirror(state);
        case SYS_SOUL_CRYPT: return raid_soul_crypt(state);
        case SYS_LEAFTON_PIT: return fight_leafton_pit(state);
        case SYS_PUB: return visit_pub(state);
        case SYS_HOUSE: return improve_house(state);
        case SYS_HARBOR: return work_harbor(state);
        case SYS_JOBS: return complete_harbor_job(state);
        case SYS_SHIPS: return launch_ship(state);
        case SYS_MILESTONES: return claim_milestone(state);
        case SYS_DAILY: return claim_daily(state, now);
        case SYS_SEASONS: return claim_season(state, now);
        case SYS_SHADOW_TREE: return grow_shadow_tree(state);
        default: return false;
    }
}
