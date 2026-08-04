#include <cstdio>
#include "content.h"
#include "game_state.h"

static bool amount_is(const GameState &s, ResourceId r, uint32_t n) {
    return bn_compare(s.resources[r], bn_from_u32(n)) == 0;
}

static bool set_effect(GameState &s, UpgradeEffect effect, uint16_t level) {
    for(uint8_t i = 0; i < UPGRADE_COUNT; ++i) {
        if(UPGRADE_DEFS[i].effect == effect) {
            s.upgrade_levels[i] = level;
            return true;
        }
    }
    return false;
}

static int failed(unsigned stage) {
    std::fprintf(stderr, "reset self-test stage %u failed\n", stage);
    return 1;
}

int main() {
    static GameState s;

    game_new(s, 10U);
    game_unlock_area(s, 1);
    game_add(s, RES_LEAVES, bn_from_u32(1000U));
    game_add(s, RES_ANCIENT, bn_from_u32(77U));
    if(!game_apply_reset(s, RESET_PRESTIGE) || game_can_reset(s, RESET_PRESTIGE) ||
       !amount_is(s, RES_ANCIENT, 77U) || !game_area_unlocked(s, 1) ||
       bn_is_zero(s.resources[RES_COINS])) return failed(1);

    game_new(s, 11U);
    game_unlock_area(s, 1);
    game_add(s, RES_STRANGE_FLASK, bn_from_u32(100U));
    game_add(s, RES_COINS, bn_from_u32(90U));
    game_add(s, RES_ANCIENT, bn_from_u32(55U));
    if(!game_apply_reset(s, RESET_BLC) || game_can_reset(s, RESET_BLC) ||
       !bn_is_zero(s.resources[RES_COINS]) || !amount_is(s, RES_ANCIENT, 55U) ||
       !game_area_unlocked(s, 1) || bn_is_zero(s.resources[RES_BLC])) return failed(2);

    game_new(s, 12U);
    if(!set_effect(s, EFFECT_KEEP_COINS, 1U) || !set_effect(s, EFFECT_PRINTER, 3U)) return failed(3);
    game_add(s, RES_STRANGE_FLASK, bn_from_u32(100U));
    game_add(s, RES_COINS, bn_from_u32(90U));
    if(!game_apply_reset(s, RESET_BLC) || !amount_is(s, RES_COINS, 90U) ||
       game_effect_level(s, EFFECT_PRINTER) != 3U) return failed(4);

    game_new(s, 13U);
    game_unlock_area(s, 1);
    s.tower_floor = 100U;
    game_add(s, RES_BLC, bn_from_u32(99U));
    game_add(s, RES_ANCIENT, bn_from_u32(44U));
    s.trades[0].active = true;
    s.trades[0].finish_time = 1000U;
    if(!game_apply_reset(s, RESET_MLC) || game_can_reset(s, RESET_MLC) ||
       !bn_is_zero(s.resources[RES_BLC]) || !amount_is(s, RES_ANCIENT, 44U) ||
       game_area_unlocked(s, 1) || s.tower_floor != 0 || s.trades[0].active) return failed(5);

    game_new(s, 14U);
    s.pyramid_floor = 50U;
    game_unlock_area(s, 1);
    game_add(s, RES_MLC, bn_from_u32(80U));
    game_add(s, RES_ANCIENT, bn_from_u32(33U));
    game_add(s, RES_GEMS, bn_from_u32(12U));
    game_add(s, RES_CURSES, bn_from_u32(13U));
    game_add(s, RES_FISH_CREDITS, bn_from_u32(14U));
    game_add(s, RES_WATER_CRYSTALS, bn_from_u32(15U));
    game_add(s, RES_SHADOW_CRYSTALS, bn_from_u32(16U));
    if(!game_apply_reset(s, RESET_ULC) || game_can_reset(s, RESET_ULC) ||
       !bn_is_zero(s.resources[RES_MLC]) || !bn_is_zero(s.resources[RES_ANCIENT]) ||
       !amount_is(s, RES_GEMS, 12U) || !amount_is(s, RES_CURSES, 13U) ||
       !amount_is(s, RES_FISH_CREDITS, 14U) || !amount_is(s, RES_WATER_CRYSTALS, 15U) ||
       !amount_is(s, RES_SHADOW_CRYSTALS, 16U) || game_area_unlocked(s, 1)) return failed(6);

    if(!set_effect(s, EFFECT_LESS_SACRIFICES, 3U) ||
       !set_effect(s, EFFECT_STABLE_AREAS, 1U) ||
       !game_toggle_ulc_sacrifice(s, ULC_SAC_BORBVENTURES) ||
       !game_toggle_ulc_sacrifice(s, ULC_SAC_CARDS) ||
       !game_toggle_ulc_sacrifice(s, ULC_SAC_CRAFTED_LEAVES) ||
       game_toggle_ulc_sacrifice(s, ULC_SAC_DICE) ||
       game_ulc_sacrifice_count(s) != 7U) return failed(7);
    game_unlock_area(s, 1);
    s.pyramid_floor = 50U;
    if(!game_apply_reset(s, RESET_ULC) || !game_area_unlocked(s, 1)) return failed(8);

    game_new(s, 15U);
    game_unlock_area(s, 1);
    s.current_area = 1;
    game_add(s, RES_QUARKS, bn_from_u32(1000000U));
    game_add(s, RES_QUARK_LEAVES, bn_from_u32(99U));
    if(!game_apply_reset(s, RESET_QUARKSTIGE) || s.current_area != 1 ||
       !bn_is_zero(s.resources[RES_QUARKS]) || !amount_is(s, RES_QUARK_LEAVES, 250000U) ||
       !amount_is(s, RES_QUANTUM_BLOBS, 1U) || s.quarkstiges_consecutive != 1U ||
       s.quarkstiges_total != 1U) return failed(9);

    std::puts("reset self-test passed");
    return 0;
}
