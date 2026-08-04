#pragma once

#include <cstdint>

struct InputState {
    uint8_t current[8];
    uint8_t previous[8];
};

void input_init(InputState &input);
void input_scan(InputState &input);
bool input_down(const InputState &input, uint8_t group, uint8_t key);
bool input_pressed(const InputState &input, uint8_t group, uint8_t key);
bool input_released(const InputState &input, uint8_t group, uint8_t key);

