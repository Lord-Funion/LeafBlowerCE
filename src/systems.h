#pragma once

#include <cstdint>

#include "game_state.h"

/* Saved aggregate counters share the unused upper half of upgrade_levels.
 * Keeping the identifiers public lets reset/challenge code clear an entire
 * progression family without duplicating fragile numeric slot constants. */
enum ProgressSlot : uint8_t {
    PROG_TRADE_COMPLETIONS = 32,
    PROG_ALCHEMY_MASTERY,
    PROG_ARTIFACTS_FOUND,
    PROG_BORBVENTURE_RANK,
    PROG_CARD_LEAF,
    PROG_CARD_TRADE,
    PROG_CARD_COMBAT,
    PROG_CARD_REWARD,
    PROG_DICE_TIER,
    PROG_BANK_LAST_TICK,
    PROG_SOUL_FORGE,
    PROG_REACTOR,
    PROG_SHADOW,
    PROG_BANK_LAST_TICK_HI,
    PROG_FRUIT,
    PROG_UNIQUE_LEAVES,
    PROG_SCROLLS,
    PROG_CHESTS,
    PROG_LEAFSCENSION,
    PROG_RELICS,
    PROG_MIRRORS,
    PROG_SOUL_CRYPT,
    PROG_LEAFTON_PIT,
    PROG_PUB,
    PROG_HOUSE,
    PROG_HARBOR,
    PROG_MILESTONE_FLAGS,
    PROG_DAILY_STAMP,
    PROG_SEASON_STAMP,
    PROG_SHADOW_TREE,
    PROG_JOBS,
    PROG_SHIPS
};

/*
 * Stateful, calculator-sized implementations of the advanced systems.  Every
 * mutating function is transactional: it checks unlocks and every cost before
 * spending anything.  Random results consume GameState::rng_state through
 * game_rand(), so save/reload produces deterministic outcomes.
 */

enum CraftProperty : uint8_t {
    CRAFT_TRADE,
    CRAFT_COMBAT,
    CRAFT_REWARD,
    CRAFT_LUCK,
    CRAFT_PROPERTY_COUNT
};

enum AlchemyRecipe : uint8_t {
    ALCHEMY_ESSENCE,
    ALCHEMY_MULCH,
    ALCHEMY_SOUL,
    ALCHEMY_ENERGY,
    ALCHEMY_RECIPE_COUNT
};

enum CardType : uint8_t {
    CARD_LEAF,
    CARD_TRADE,
    CARD_COMBAT,
    CARD_REWARD,
    CARD_TYPE_COUNT
};

/* Runs due background completions. Call before game_tick_second(). */
void systems_tick(GameState &state, uint32_t now);

/* Validates every systems-owned save slot in live and challenge state. */
bool systems_persistent_state_valid(const GameState &state);

/* A safe context action for the advanced-system menu. Resets remain explicit. */
bool systems_primary_action(GameState &state, SystemId system, uint32_t now);

bool systems_generate_trades(GameState &state, uint32_t now);
bool systems_start_trade(GameState &state, uint8_t slot, uint32_t now);
bool systems_complete_trade(GameState &state, uint8_t slot, uint32_t now);
bool systems_trade_present(const GameState &state, uint8_t slot);
uint16_t systems_trade_completions(const GameState &state);

bool systems_craft_item(GameState &state, uint8_t slot);
bool systems_equip_item(GameState &state, uint8_t slot);
bool systems_upgrade_item(GameState &state, uint8_t slot);

bool systems_brew(GameState &state, AlchemyRecipe recipe);
uint16_t systems_alchemy_mastery(const GameState &state);

bool systems_start_artifact_search(GameState &state, uint32_t now);
bool systems_collect_artifact(GameState &state, uint32_t now);
uint16_t systems_artifacts_found(const GameState &state);

BigNum systems_tower_cost(const GameState &state);
bool systems_advance_tower(GameState &state);
BigNum systems_pyramid_cost(const GameState &state);
bool systems_advance_pyramid(GameState &state);

bool systems_start_borbventure(GameState &state, uint32_t now);
bool systems_complete_borbventure(GameState &state, uint32_t now);
uint16_t systems_borbventure_rank(const GameState &state);

BigNum systems_card_cost(const GameState &state, CardType card);
bool systems_upgrade_card(GameState &state, CardType card);
uint16_t systems_card_level(const GameState &state, CardType card);

BigNum systems_dice_upgrade_cost(const GameState &state);
bool systems_upgrade_dice(GameState &state);
bool systems_roll_dice(GameState &state, uint8_t *total_out = nullptr);
uint16_t systems_dice_tier(const GameState &state);

BigNum systems_death_book_cost(const GameState &state);
bool systems_upgrade_death_book(GameState &state);

BigNum systems_mine_cost(const GameState &state);
bool systems_delve_mine(GameState &state);
bool systems_fish(GameState &state);

bool systems_bank_deposit(GameState &state, BigNum amount);
bool systems_bank_claim_interest(GameState &state);
bool systems_bank_withdraw(GameState &state);

bool systems_forge_soul(GameState &state);
uint16_t systems_soul_forge_level(const GameState &state);
bool systems_run_quark_reactor(GameState &state);
uint16_t systems_reactor_level(const GameState &state);
/* A destructive reset; the UI must preview and confirm it before calling. */
bool systems_quarkstige(GameState &state);

bool systems_form_shadow_crystal(GameState &state);
uint16_t systems_shadow_level(const GameState &state);
BigNum systems_galaxy_cost(const GameState &state);
bool systems_advance_galaxy(GameState &state);
