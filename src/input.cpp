#include "input.h"

#include <cstring>
#include <keypadc.h>

namespace {
constexpr uint8_t ARROW_GROUP = 7;
constexpr uint8_t INITIAL_REPEAT_DELAY = 12;
constexpr uint8_t REPEAT_INTERVAL = 3;
constexpr uint8_t REPEATABLE_KEYS[] = {kb_Up, kb_Down, kb_Left, kb_Right};

uint8_t held_frames[sizeof(REPEATABLE_KEYS)] = {};
uint8_t repeat_pulse = 0;

void reset_repeat_state() {
    std::memset(held_frames, 0, sizeof(held_frames));
    repeat_pulse = 0;
}

void update_repeat_state(const InputState &input) {
    repeat_pulse = 0;
    for(uint8_t index = 0; index < sizeof(REPEATABLE_KEYS); index++) {
        const uint8_t key = REPEATABLE_KEYS[index];
        const bool down = (input.current[ARROW_GROUP] & key) != 0;
        const bool was_down = (input.previous[ARROW_GROUP] & key) != 0;

        if(!down) {
            held_frames[index] = 0;
            continue;
        }
        if(!was_down) {
            held_frames[index] = 0;
            continue;
        }

        if(held_frames[index] < 255) held_frames[index]++;
        const uint8_t held = held_frames[index];
        if(held == INITIAL_REPEAT_DELAY ||
           (held > INITIAL_REPEAT_DELAY &&
            static_cast<uint8_t>(held - INITIAL_REPEAT_DELAY) % REPEAT_INTERVAL == 0)) {
            repeat_pulse |= key;
        }
    }
}
} // namespace

void input_init(InputState &input) {
    std::memset(&input, 0, sizeof(input));
    reset_repeat_state();
    kb_Scan();
    for(uint8_t group = 1; group < 8; group++) {
        input.current[group] = kb_Data[group];
        input.previous[group] = input.current[group];
    }
}

void input_scan(InputState &input) {
    std::memcpy(input.previous, input.current, sizeof(input.current));
    kb_Scan();
    for(uint8_t group = 1; group < 8; group++) input.current[group] = kb_Data[group];
    update_repeat_state(input);
}

bool input_down(const InputState &input, uint8_t group, uint8_t key) {
    return group < 8 && (input.current[group] & key) != 0;
}

bool input_pressed(const InputState &input, uint8_t group, uint8_t key) {
    if(group >= 8) return false;
    const bool newly_pressed = (input.current[group] & key) != 0 &&
                               (input.previous[group] & key) == 0;
    const bool repeated = group == ARROW_GROUP && (repeat_pulse & key) != 0;
    return newly_pressed || repeated;
}

bool input_released(const InputState &input, uint8_t group, uint8_t key) {
    return group < 8 && (input.current[group] & key) == 0 && (input.previous[group] & key) != 0;
}
