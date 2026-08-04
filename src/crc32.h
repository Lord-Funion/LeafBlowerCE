#pragma once

#include <cstddef>
#include <cstdint>

/* IEEE CRC-32. Pass a previous result to crc32_update() to continue it. */
uint32_t crc32_update(uint32_t crc, const void *data, size_t length);
uint32_t crc32_compute(const void *data, size_t length);
