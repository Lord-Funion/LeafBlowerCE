#pragma once

#include <cstdint>

#include "game_state.h"
#include "input.h"
#include "leaf_field.h"

enum ScreenId : uint8_t {
    SCREEN_GAME,
    SCREEN_MENU,
    SCREEN_RESOURCES,
    SCREEN_TOOLS,
    SCREEN_AREAS,
    SCREEN_SHOPS,
    SCREEN_RESETS,
    SCREEN_ULC_SACRIFICES,
    SCREEN_SYSTEMS,
    SCREEN_AUTOMATION,
    SCREEN_PETS,
    SCREEN_CRAFTING,
    SCREEN_TRADING,
    SCREEN_CHALLENGES,
    SCREEN_ACHIEVEMENTS,
    SCREEN_STATS,
    SCREEN_SETTINGS,
    SCREEN_CONTROLS,
    SCREEN_CREDITS
};

struct UiState {
    ScreenId screen;
    uint8_t selection;
    uint8_t page;
    uint8_t shop;
    uint8_t message_timer;
    uint8_t confirm_reset;
    bool showing_confirmation;
    char message[48];
};

struct UiResult {
    bool request_save;
    bool request_exit;
    bool area_changed;
};

void ui_init(UiState &ui);
void ui_notify(UiState &ui, const char *message);
void ui_init_graphics();
UiResult ui_handle_input(UiState &ui, GameState &state, LeafField &field,
                         const InputState &input, uint32_t now);
void ui_tick(UiState &ui);
void ui_render(const UiState &ui, const GameState &state, const LeafField &field, uint32_t now);
