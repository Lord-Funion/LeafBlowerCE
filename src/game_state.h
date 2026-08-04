#pragma once

#include <cstdint>

#include "big_num.h"
#include "content.h"

constexpr uint8_t MAX_UPGRADES = 64;
constexpr uint8_t MAX_CRAFTED_ITEMS = 8;
constexpr uint8_t MAX_TRADES = 3;
constexpr uint8_t MAX_LEAVES = 72;
constexpr uint8_t MAX_AREAS = 80;
constexpr uint8_t AREA_UNLOCK_BYTES = MAX_AREAS / 8;
constexpr uint16_t GAME_STATE_VERSION = 3;

struct CraftedItem {
    uint8_t leaf_tier;
    uint8_t quality;
    uint8_t property;
    uint8_t level;
    bool equipped;
};

struct TradeOffer {
    uint8_t input_resource;
    uint8_t output_resource;
    BigNum input_amount;
    BigNum output_amount;
    uint32_t finish_time;
    bool active;
};

struct ChallengeSnapshot {
    BigNum resources[RESOURCE_COUNT];
    BigNum lifetime[RESOURCE_COUNT];
    uint16_t upgrade_levels[MAX_UPGRADES];
    uint8_t area_unlocks[AREA_UNLOCK_BYTES];
    uint64_t system_unlocks;
    uint16_t tool_unlocks;
    uint16_t pet_unlocks;
    uint32_t achievements;
    uint16_t challenge_completions;
    uint8_t current_area;
    uint8_t current_tool;
    uint8_t current_pet;
    uint8_t selected_resource;
    CraftedItem crafted[MAX_CRAFTED_ITEMS];
    TradeOffer trades[MAX_TRADES];
    BigNum bank_balance;
    uint32_t trade_refresh_time;
    uint32_t borbventure_finish_time;
    uint32_t artifact_ready_time;
    uint32_t play_seconds;
    uint32_t rng_state;
    uint16_t tower_floor;
    uint16_t pyramid_floor;
    uint16_t mine_depth;
    uint16_t fishing_level;
    uint16_t death_book_level;
    uint16_t galaxy_stage;
    uint16_t combo;
    uint16_t combo_timer;
    uint16_t quarkstiges_consecutive;
    uint16_t quarkstiges_total;
    uint16_t ulc_sacrifice_mask;
};

struct GameState {
    uint16_t version;
    BigNum resources[RESOURCE_COUNT];
    BigNum lifetime[RESOURCE_COUNT];
    uint16_t upgrade_levels[MAX_UPGRADES];
    uint64_t system_unlocks;
    uint8_t area_unlocks[AREA_UNLOCK_BYTES];
    uint16_t tool_unlocks;
    uint16_t pet_unlocks;
    uint8_t current_area;
    uint8_t current_tool;
    uint8_t current_pet;
    uint8_t selected_resource;
    uint32_t achievements;
    uint16_t challenge_completions;
    uint8_t active_challenge;
    bool challenge_running;
    ChallengeSnapshot challenge_snapshot;
    CraftedItem crafted[MAX_CRAFTED_ITEMS];
    TradeOffer trades[MAX_TRADES];
    BigNum bank_balance;
    uint32_t trade_refresh_time;
    uint32_t borbventure_finish_time;
    uint32_t artifact_ready_time;
    uint32_t play_seconds;
    uint32_t last_rtc;
    uint32_t save_sequence;
    uint32_t rng_state;
    uint16_t tower_floor;
    uint16_t pyramid_floor;
    uint16_t mine_depth;
    uint16_t fishing_level;
    uint16_t death_book_level;
    uint16_t galaxy_stage;
    uint16_t quarkstiges_consecutive;
    uint16_t quarkstiges_total;
    uint16_t ulc_sacrifice_mask;
    uint16_t combo;
    uint16_t combo_timer;
    uint16_t auto_save_timer;
    uint8_t settings_flags;
};

enum ResetTier : uint8_t {
    RESET_PRESTIGE,
    RESET_BLC,
    RESET_MLC,
    RESET_ULC,
    RESET_QUARKSTIGE
};

enum UlcSacrifice : uint8_t {
    ULC_SAC_BORBVENTURES,
    ULC_SAC_CARDS,
    ULC_SAC_CRAFTED_LEAVES,
    ULC_SAC_DICE,
    ULC_SAC_EQUIPMENT,
    ULC_SAC_LEAFSCENSIONS,
    ULC_SAC_MATERIALS,
    ULC_SAC_MINES,
    ULC_SAC_QUARKSTIGES,
    ULC_SAC_RELICS,
    ULC_SACRIFICE_COUNT
};

constexpr uint16_t ULC_SACRIFICE_ALL = (1U << ULC_SACRIFICE_COUNT) - 1U;

void game_new(GameState &state, uint32_t now);
bool game_validate(GameState &state);
bool game_system_unlocked(const GameState &state, SystemId system);
void game_unlock_system(GameState &state, SystemId system);
bool game_area_unlocked(const GameState &state, uint8_t area);
void game_unlock_area(GameState &state, uint8_t area);
bool game_tool_unlocked(const GameState &state, uint8_t tool);
void game_unlock_tool(GameState &state, uint8_t tool);
bool game_pet_unlocked(const GameState &state, uint8_t pet);
void game_unlock_pet(GameState &state, uint8_t pet);
void game_add(GameState &state, ResourceId resource, BigNum amount);
bool game_spend(GameState &state, ResourceId resource, BigNum amount);
uint16_t game_effect_level(const GameState &state, UpgradeEffect effect);
uint32_t game_effect_permille(const GameState &state, UpgradeEffect effect);
/* Production multiplier imposed by the active challenge (1000 = 100%). */
uint16_t game_challenge_output_permille(const GameState &state);
BigNum game_upgrade_cost(const GameState &state, uint8_t upgrade);
bool game_buy_upgrade(GameState &state, uint8_t upgrade);
bool game_buy_tool(GameState &state, uint8_t tool);
bool game_buy_area(GameState &state, uint8_t area);
bool game_buy_pet(GameState &state, uint8_t pet);
void game_refresh_unlocks(GameState &state);
BigNum game_reset_reward(const GameState &state, ResetTier tier);
bool game_can_reset(const GameState &state, ResetTier tier);
bool game_apply_reset(GameState &state, ResetTier tier);
uint8_t game_ulc_sacrifice_count(const GameState &state);
uint8_t game_ulc_min_sacrifices(const GameState &state);
bool game_toggle_ulc_sacrifice(GameState &state, uint8_t sacrifice);
void game_tick_second(GameState &state, uint32_t now);
void game_apply_offline(GameState &state, uint32_t elapsed_seconds);
void game_check_achievements(GameState &state);
bool game_start_challenge(GameState &state, uint8_t challenge);
bool game_finish_challenge(GameState &state);
void game_abandon_challenge(GameState &state);
uint32_t game_rand(GameState &state);
