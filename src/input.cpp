#include "input.h"

#include <cstring>
#include <keypadc.h>

void input_init(InputState &input) {
    std::memset(&input, 0, sizeof(input));
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
}

bool input_down(const InputState &input, uint8_t group, uint8_t key) {
    return group < 8 && (input.current[group] & key) != 0;
}

bool input_pressed(const InputState &input, uint8_t group, uint8_t key) {
    return group < 8 && (input.current[group] & key) != 0 && (input.previous[group] & key) == 0;
}

bool input_released(const InputState &input, uint8_t group, uint8_t key) {
    return group < 8 && (input.current[group] & key) == 0 && (input.previous[group] & key) != 0;
}

