#include "crc32.h"

uint32_t crc32_update(uint32_t crc, const void *data, size_t length) {
    const auto *bytes = static_cast<const uint8_t *>(data);
    crc = ~crc;
    while(length-- != 0) {
        crc ^= *bytes++;
        for(uint8_t bit = 0; bit < 8; bit++) {
            const uint32_t mask = 0U - (crc & 1U);
            crc = (crc >> 1U) ^ (0xEDB88320UL & mask);
        }
    }
    return ~crc;
}

uint32_t crc32_compute(const void *data, size_t length) {
    return crc32_update(0, data, length);
}
