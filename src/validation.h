#pragma once

#include <cstdint>

struct GameState;

/* Zero means the executable's arithmetic and generated content passed. */
uint16_t runtime_self_test(GameState &scratch);
