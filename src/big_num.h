#pragma once

#include <cstddef>
#include <cstdint>

/*
 * Compact decimal floating point used by the idle-game economy.
 * value = mantissa / 1,000,000 * 10^exponent
 * Non-zero values are normalized to a seven-digit mantissa.
 */
struct BigNum {
    uint32_t mantissa;
    int16_t exponent;
};

constexpr uint32_t BIG_MANTISSA_SCALE = 1000000UL;
constexpr int16_t BIG_MAX_EXPONENT = 30000;

BigNum bn_zero();
BigNum bn_from_u32(uint32_t value);
BigNum bn_make(uint32_t mantissa, int16_t exponent);
BigNum bn_normalize(BigNum value);
bool bn_is_zero(BigNum value);
int bn_compare(BigNum left, BigNum right);
BigNum bn_add(BigNum left, BigNum right);
BigNum bn_sub(BigNum left, BigNum right);
BigNum bn_mul(BigNum left, BigNum right);
BigNum bn_div(BigNum left, BigNum right);
BigNum bn_mul_u32(BigNum value, uint32_t factor);
BigNum bn_div_u32(BigNum value, uint32_t divisor);
BigNum bn_scale_permille(BigNum value, uint32_t permille);
BigNum bn_pow_permille(uint32_t permille, uint16_t power);
BigNum bn_geometric_cost(BigNum base, uint32_t growth_permille, uint16_t level);
uint32_t bn_log10_floor(BigNum value);
uint32_t bn_to_u32_clamped(BigNum value, uint32_t maximum);
void bn_format(BigNum value, char *buffer, size_t length);
bool bn_valid(BigNum value);

