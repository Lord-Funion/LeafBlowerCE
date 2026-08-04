#include "validation.h"

#include "big_num.h"
#include "content.h"
#include "game_state.h"
#include "systems.h"

namespace {

bool amount_is(const GameState &state, ResourceId resource, uint32_t expected) {
    return bn_compare(state.resources[resource], bn_from_u32(expected)) == 0;
}

bool set_effect_level(GameState &state, UpgradeEffect effect, uint16_t level) {
    for(uint8_t i = 0; i < UPGRADE_COUNT; i++) {
        if(UPGRADE_DEFS[i].effect == effect) {
            state.upgrade_levels[i] = level;
            return true;
        }
    }
    return false;
}

bool test_new_game_and_shop(GameState &state) {
    game_new(state, 1234U);
    if(state.version != GAME_STATE_VERSION || state.current_area != 0 || state.current_tool != 0 ||
       state.active_challenge != 0xFFU || state.ulc_sacrifice_mask != ULC_SACRIFICE_ALL ||
       !game_area_unlocked(state, 0) || !game_tool_unlocked(state, 0)) return false;

    game_add(state, RES_LEAVES, bn_make(9999999U, 100));
    for(uint16_t level = 0; level < UPGRADE_DEFS[0].max_level; level++) {
        if(!game_buy_upgrade(state, 0)) return false;
    }
    if(game_buy_upgrade(state, 0) || state.upgrade_levels[0] != UPGRADE_DEFS[0].max_level) return false;

    game_new(state, 7U);
    game_unlock_system(state, SYS_AREAS);
    game_add(state, RES_COINS, bn_make(9999999U, 20));
    return game_buy_area(state, 1) && state.current_area == 1 && game_area_unlocked(state, 1);
}

bool test_resets(GameState &state) {
    game_new(state, 10U);
    game_unlock_area(state, 1);
    game_add(state, RES_LEAVES, bn_from_u32(1000U));
    game_add(state, RES_ANCIENT, bn_from_u32(77U));
    if(!game_apply_reset(state, RESET_PRESTIGE) || game_can_reset(state, RESET_PRESTIGE) ||
       !amount_is(state, RES_ANCIENT, 77U) || !game_area_unlocked(state, 1) ||
       bn_is_zero(state.resources[RES_COINS])) return false;

    game_new(state, 11U);
    game_unlock_area(state, 1);
    game_add(state, RES_STRANGE_FLASK, bn_from_u32(100U));
    game_add(state, RES_COINS, bn_from_u32(90U));
    game_add(state, RES_ANCIENT, bn_from_u32(55U));
    if(!game_apply_reset(state, RESET_BLC) || game_can_reset(state, RESET_BLC) ||
       !bn_is_zero(state.resources[RES_COINS]) || !amount_is(state, RES_ANCIENT, 55U) ||
       !game_area_unlocked(state, 1) || bn_is_zero(state.resources[RES_BLC])) return false;

    game_new(state, 12U);
    if(!set_effect_level(state, EFFECT_KEEP_COINS, 1U) || !set_effect_level(state, EFFECT_PRINTER, 3U)) return false;
    game_add(state, RES_STRANGE_FLASK, bn_from_u32(100U));
    game_add(state, RES_COINS, bn_from_u32(90U));
    if(!game_apply_reset(state, RESET_BLC) || !amount_is(state, RES_COINS, 90U) ||
       game_effect_level(state, EFFECT_PRINTER) != 3U) return false;

    game_new(state, 13U);
    game_unlock_area(state, 1);
    state.tower_floor = 100U;
    game_add(state, RES_BLC, bn_from_u32(99U));
    game_add(state, RES_ANCIENT, bn_from_u32(44U));
    state.trades[0].active = true;
    state.trades[0].finish_time = 1000U;
    if(!game_apply_reset(state, RESET_MLC) || game_can_reset(state, RESET_MLC) ||
       !bn_is_zero(state.resources[RES_BLC]) || !amount_is(state, RES_ANCIENT, 44U) ||
       game_area_unlocked(state, 1) || state.tower_floor != 0 || state.trades[0].active) return false;

    game_new(state, 14U);
    state.pyramid_floor = 50U;
    game_unlock_area(state, 1);
    game_add(state, RES_MLC, bn_from_u32(80U));
    game_add(state, RES_ANCIENT, bn_from_u32(33U));
    game_add(state, RES_GEMS, bn_from_u32(12U));
    game_add(state, RES_CURSES, bn_from_u32(13U));
    game_add(state, RES_FISH_CREDITS, bn_from_u32(14U));
    game_add(state, RES_WATER_CRYSTALS, bn_from_u32(15U));
    game_add(state, RES_SHADOW_CRYSTALS, bn_from_u32(16U));
    if(!game_apply_reset(state, RESET_ULC) || game_can_reset(state, RESET_ULC) ||
       !bn_is_zero(state.resources[RES_MLC]) || !bn_is_zero(state.resources[RES_ANCIENT]) ||
       !amount_is(state, RES_GEMS, 12U) || !amount_is(state, RES_CURSES, 13U) ||
       !amount_is(state, RES_FISH_CREDITS, 14U) || !amount_is(state, RES_WATER_CRYSTALS, 15U) ||
       !amount_is(state, RES_SHADOW_CRYSTALS, 16U) || game_area_unlocked(state, 1)) return false;

    if(!set_effect_level(state, EFFECT_LESS_SACRIFICES, 3U) ||
       !set_effect_level(state, EFFECT_STABLE_AREAS, 1U) ||
       !game_toggle_ulc_sacrifice(state, ULC_SAC_BORBVENTURES) ||
       !game_toggle_ulc_sacrifice(state, ULC_SAC_CARDS) ||
       !game_toggle_ulc_sacrifice(state, ULC_SAC_CRAFTED_LEAVES) ||
       game_toggle_ulc_sacrifice(state, ULC_SAC_DICE) || game_ulc_sacrifice_count(state) != 7U) return false;
    game_unlock_area(state, 1);
    state.pyramid_floor = 50U;
    if(!game_apply_reset(state, RESET_ULC) || !game_area_unlocked(state, 1)) return false;

    game_new(state, 15U);
    game_unlock_area(state, 1);
    state.current_area = 1;
    game_add(state, RES_QUARKS, bn_from_u32(1000000U));
    game_add(state, RES_QUARK_LEAVES, bn_from_u32(99U));
    if(!game_apply_reset(state, RESET_QUARKSTIGE) || state.current_area != 1 ||
       !bn_is_zero(state.resources[RES_QUARKS]) || !amount_is(state, RES_QUARK_LEAVES, 250000U) ||
       !amount_is(state, RES_QUANTUM_BLOBS, 1U) || state.quarkstiges_consecutive != 1U ||
       state.quarkstiges_total != 1U) return false;
    return true;
}

bool test_challenges(GameState &state) {
    game_new(state, 20U);
    game_add(state, RES_ANCIENT, bn_from_u32(321U));
    state.crafted[2].quality = 75U;
    state.trades[1].finish_time = 777U;
    state.bank_balance = bn_from_u32(88U);
    state.mine_depth = 9U;
    uint32_t saved_rng = state.rng_state;
    if(!game_start_challenge(state, 0) || game_finish_challenge(state) ||
       !bn_is_zero(state.resources[RES_ANCIENT]) || state.crafted[2].quality != 0 ||
       state.mine_depth != 0) return false;
    game_abandon_challenge(state);
    if(!amount_is(state, RES_ANCIENT, 321U) || state.crafted[2].quality != 75U ||
       state.trades[1].finish_time != 777U || !amount_is(state, RES_LEAVES, 0U) ||
       bn_compare(state.bank_balance, bn_from_u32(88U)) != 0 || state.mine_depth != 9U ||
       state.rng_state != saved_rng) return false;

    if(!game_start_challenge(state, 4)) return false;
    state.upgrade_levels[PROG_TRADE_COMPLETIONS] = 10U;
    if(!game_finish_challenge(state) || (state.challenge_completions & (1U << 4U)) == 0 ||
       bn_is_zero(state.resources[RES_GEMS])) return false;

    if(!game_start_challenge(state, 1) || game_challenge_output_permille(state) != 500U) return false;
    game_abandon_challenge(state);
    if(!game_start_challenge(state, 3)) return false;
    game_add(state, RES_LEAVES, bn_from_u32(1000U));
    if(game_apply_reset(state, RESET_PRESTIGE)) return false;
    game_abandon_challenge(state);
    return true;
}

bool test_offline_and_saturation(GameState &state) {
    game_new(state, 30U);
    game_unlock_system(state, SYS_PRINTERS);
    game_apply_offline(state, 60U);
    if(bn_is_zero(state.resources[RES_LEAVES])) return false;
    game_add(state, RES_LEAVES, bn_make(9999999U, BIG_MAX_EXPONENT));
    game_add(state, RES_LEAVES, bn_make(9999999U, BIG_MAX_EXPONENT));
    return bn_valid(state.resources[RES_LEAVES]) &&
           state.resources[RES_LEAVES].exponent == BIG_MAX_EXPONENT;
}

} // namespace

uint16_t runtime_self_test(GameState &scratch) {
    uint16_t failures = 0;

    BigNum hundred = bn_from_u32(100);
    BigNum fifty = bn_from_u32(50);
    if(bn_to_u32_clamped(bn_add(hundred, fifty), 1000) != 150U) failures |= 1U;
    if(bn_to_u32_clamped(bn_sub(hundred, fifty), 1000) != 50U) failures |= 2U;
    if(bn_to_u32_clamped(bn_mul(hundred, bn_from_u32(25)), 10000) != 2500U) failures |= 4U;
    if(bn_to_u32_clamped(bn_div(hundred, bn_from_u32(4)), 1000) != 25U) failures |= 8U;
    if(bn_to_u32_clamped(bn_scale_permille(hundred, 1250), 1000) != 125U) failures |= 16U;
    if(!bn_valid(bn_mul(bn_make(9999999U, BIG_MAX_EXPONENT), bn_from_u32(10)))) failures |= 32U;

    if(AREA_COUNT == 0 || AREA_COUNT > MAX_AREAS || TOOL_COUNT == 0 || TOOL_COUNT > 16 ||
       PET_COUNT == 0 || PET_COUNT > 16 || UPGRADE_COUNT > MAX_UPGRADES || SYSTEM_COUNT > 64 ||
       ACHIEVEMENT_COUNT > 32 || CHALLENGE_COUNT > 16) failures |= 64U;

    for(uint8_t i = 0; i < AREA_COUNT; i++) {
        const AreaDef &area = AREA_DEFS[i];
        if(area.leaf >= RESOURCE_COUNT || area.cost_resource >= RESOURCE_COUNT ||
           area.requirement >= SYSTEM_COUNT || !bn_valid(area.cost) || area.name == nullptr) failures |= 128U;
    }
    for(uint8_t i = 0; i < TOOL_COUNT; i++) {
        const ToolDef &tool = TOOL_DEFS[i];
        if(tool.cost_resource >= RESOURCE_COUNT || tool.requirement >= SYSTEM_COUNT ||
           !bn_valid(tool.cost) || tool.power_permille == 0 || tool.range == 0) failures |= 256U;
    }
    for(uint8_t i = 0; i < UPGRADE_COUNT; i++) {
        const UpgradeDef &upgrade = UPGRADE_DEFS[i];
        if(upgrade.shop >= SHOP_COUNT || upgrade.cost_resource >= RESOURCE_COUNT ||
           upgrade.requirement >= SYSTEM_COUNT || !bn_valid(upgrade.base_cost) ||
           upgrade.growth_permille < 1000U || upgrade.max_level == 0) failures |= 512U;
    }
    for(uint8_t i = 0; i < PET_COUNT; i++) {
        const PetDef &pet = PET_DEFS[i];
        if(pet.cost_resource >= RESOURCE_COUNT || pet.bonus > EFFECT_LESS_SACRIFICES ||
           !bn_valid(pet.cost) || pet.permille < 1000U) failures |= 1024U;
    }
    if(!test_new_game_and_shop(scratch)) failures |= 2048U;
    if(!test_resets(scratch)) failures |= 4096U;
    if(!test_challenges(scratch)) failures |= 8192U;
    if(!test_offline_and_saturation(scratch)) failures |= 16384U;
    return failures;
}
