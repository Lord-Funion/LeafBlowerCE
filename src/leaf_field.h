#pragma once

#include <cstdint>

#include "game_state.h"

struct LeafParticle {
    int16_t x;
    int16_t y;
    int16_t vx;
    int16_t vy;
    uint8_t resource;
    uint8_t color;
    uint8_t phase;
    bool active;
};

struct LeafField {
    LeafParticle leaves[MAX_LEAVES];
    int16_t blower_x;
    int16_t blower_y;
    int8_t facing_x;
    int8_t facing_y;
    uint8_t spawn_timer;
    uint16_t frame;
};

void leaf_field_init(LeafField &field, GameState &state);
void leaf_field_change_area(LeafField &field, GameState &state);
void leaf_field_update(LeafField &field, GameState &state,
                       int8_t move_x, int8_t move_y, bool blowing);
