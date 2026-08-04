#include <cstdio>

#include "game_state.h"
#include "validation.h"

int main() {
    static GameState scratch;
    const uint16_t failures = runtime_self_test(scratch);
    if(failures != 0) {
        std::fprintf(stderr, "runtime_self_test failed: 0x%04X\n",
                     static_cast<unsigned>(failures));
        return 1;
    }
    std::puts("runtime_self_test passed");
    return 0;
}
