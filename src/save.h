#pragma once

#include <cstdint>

#include "game_state.h"

constexpr char SAVE_PRIMARY_NAME[] = "LBCSAVE";
constexpr char SAVE_BACKUP_NAME[] = "LBCBAK";
constexpr char SAVE_TEMP_NAME[] = "LBCTMP";
constexpr uint16_t SAVE_AUTO_INTERVAL_SECONDS = 60;
constexpr uint32_t SAVE_MAX_OFFLINE_SECONDS = 7UL * 24UL * 60UL * 60UL;

enum class SaveLoadStatus : uint8_t {
    NewGame,
    Primary,
    Backup,
    Recovered
};

enum class SaveAutoResult : uint8_t {
    NotDue,
    Saved,
    Failed
};

/* Seconds since 1997-01-01, or zero if the calculator RTC is invalid. */
uint32_t save_rtc_seconds();

/* Clock-safe and capped elapsed time used for offline progress. */
uint32_t save_offline_seconds(uint32_t saved_rtc, uint32_t now);

/*
 * Loads and validates the primary, then backup, then an interrupted temp save.
 * If a save loads, offline progress is applied and last_rtc is advanced to now.
 * With no valid save, state is initialized as a new game.
 */
SaveLoadStatus save_load(GameState &state, uint32_t now, uint32_t &offline_seconds);

/* Transactionally writes an archived primary save and preserves a backup. */
bool save_write(GameState &state, uint32_t now);

/* UI-facing helpers. Manual save is an alias; auto save accumulates seconds. */
bool save_manual(GameState &state, uint32_t now);
SaveAutoResult save_auto(GameState &state, uint32_t now, uint32_t elapsed_seconds);
