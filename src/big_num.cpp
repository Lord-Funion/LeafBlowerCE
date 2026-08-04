#include "big_num.h"

#include <cstdio>

static BigNum bn_saturate() {
    return {9999999UL, BIG_MAX_EXPONENT};
}

BigNum bn_zero() {
    return {0, 0};
}

BigNum bn_normalize(BigNum value) {
    if(value.mantissa == 0) return bn_zero();
    while(value.mantissa >= BIG_MANTISSA_SCALE * 10UL) {
        value.mantissa = (value.mantissa + 5UL) / 10UL;
        if(value.exponent >= BIG_MAX_EXPONENT) return bn_saturate();
        value.exponent++;
    }
    while(value.mantissa < BIG_MANTISSA_SCALE) {
        if(value.exponent <= -BIG_MAX_EXPONENT) return bn_zero();
        value.mantissa *= 10UL;
        value.exponent--;
    }
    return value;
}

BigNum bn_from_u32(uint32_t value) {
    if(value == 0) return bn_zero();
    BigNum result = {value, 6};
    return bn_normalize(result);
}

BigNum bn_make(uint32_t mantissa, int16_t exponent) {
    return bn_normalize({mantissa, exponent});
}

bool bn_is_zero(BigNum value) {
    return value.mantissa == 0;
}

int bn_compare(BigNum left, BigNum right) {
    left = bn_normalize(left);
    right = bn_normalize(right);
    if(left.mantissa == 0) return right.mantissa == 0 ? 0 : -1;
    if(right.mantissa == 0) return 1;
    if(left.exponent != right.exponent) return left.exponent < right.exponent ? -1 : 1;
    if(left.mantissa == right.mantissa) return 0;
    return left.mantissa < right.mantissa ? -1 : 1;
}

static uint32_t pow10_u32(uint8_t power) {
    static const uint32_t values[] = {
            1UL, 10UL, 100UL, 1000UL, 10000UL, 100000UL, 1000000UL, 10000000UL
    };
    return values[power > 7 ? 7 : power];
}

BigNum bn_add(BigNum left, BigNum right) {
    left = bn_normalize(left);
    right = bn_normalize(right);
    if(left.mantissa == 0) return right;
    if(right.mantissa == 0) return left;
    if(left.exponent < right.exponent) {
        BigNum temporary = left;
        left = right;
        right = temporary;
    }
    int difference = left.exponent - right.exponent;
    if(difference > 7) return left;
    uint32_t aligned = right.mantissa / pow10_u32(static_cast<uint8_t>(difference));
    return bn_normalize({left.mantissa + aligned, left.exponent});
}

BigNum bn_sub(BigNum left, BigNum right) {
    left = bn_normalize(left);
    right = bn_normalize(right);
    if(bn_compare(left, right) <= 0) return bn_zero();
    int difference = left.exponent - right.exponent;
    if(difference > 7) return left;
    uint32_t aligned = right.mantissa / pow10_u32(static_cast<uint8_t>(difference));
    return bn_normalize({left.mantissa - aligned, left.exponent});
}

BigNum bn_mul(BigNum left, BigNum right) {
    if(bn_is_zero(left) || bn_is_zero(right)) return bn_zero();
    int32_t exponent = static_cast<int32_t>(left.exponent) + right.exponent;
    if(exponent > BIG_MAX_EXPONENT) return bn_saturate();
    if(exponent < -BIG_MAX_EXPONENT) return bn_zero();
    uint64_t product = static_cast<uint64_t>(left.mantissa) * right.mantissa;
    BigNum result = {
            static_cast<uint32_t>((product + BIG_MANTISSA_SCALE / 2) / BIG_MANTISSA_SCALE),
            static_cast<int16_t>(exponent)
    };
    return bn_normalize(result);
}

BigNum bn_div(BigNum left, BigNum right) {
    if(bn_is_zero(right)) return bn_is_zero(left) ? bn_zero() : bn_saturate();
    if(bn_is_zero(left)) return bn_zero();
    int32_t exponent = static_cast<int32_t>(left.exponent) - right.exponent;
    if(exponent > BIG_MAX_EXPONENT) return bn_saturate();
    if(exponent < -BIG_MAX_EXPONENT) return bn_zero();
    uint64_t numerator = static_cast<uint64_t>(left.mantissa) * BIG_MANTISSA_SCALE;
    BigNum result = {
            static_cast<uint32_t>((numerator + right.mantissa / 2) / right.mantissa),
            static_cast<int16_t>(exponent)
    };
    return bn_normalize(result);
}

BigNum bn_mul_u32(BigNum value, uint32_t factor) {
    return bn_mul(value, bn_from_u32(factor));
}

BigNum bn_div_u32(BigNum value, uint32_t divisor) {
    return bn_div(value, bn_from_u32(divisor));
}

BigNum bn_scale_permille(BigNum value, uint32_t permille) {
    if(permille == 0 || bn_is_zero(value)) return bn_zero();
    return bn_div_u32(bn_mul_u32(value, permille), 1000U);
}

BigNum bn_pow_permille(uint32_t permille, uint16_t power) {
    BigNum result = bn_from_u32(1);
    BigNum factor = bn_div_u32(bn_from_u32(permille), 1000U);
    while(power > 0) {
        if(power & 1U) result = bn_mul(result, factor);
        power >>= 1U;
        if(power) factor = bn_mul(factor, factor);
    }
    return result;
}

BigNum bn_geometric_cost(BigNum base, uint32_t growth_permille, uint16_t level) {
    return bn_mul(base, bn_pow_permille(growth_permille, level));
}

uint32_t bn_log10_floor(BigNum value) {
    value = bn_normalize(value);
    if(value.mantissa == 0) return 0;
    int32_t result = value.exponent;
    return result < 0 ? 0 : static_cast<uint32_t>(result);
}

uint32_t bn_to_u32_clamped(BigNum value, uint32_t maximum) {
    value = bn_normalize(value);
    if(value.mantissa == 0) return 0;
    if(value.exponent > 9) return maximum;
    uint64_t result = value.mantissa;
    if(value.exponent >= 6) {
        result *= pow10_u32(static_cast<uint8_t>(value.exponent - 6));
    } else {
        result /= pow10_u32(static_cast<uint8_t>(6 - value.exponent));
    }
    return result > maximum ? maximum : static_cast<uint32_t>(result);
}

void bn_format(BigNum value, char *buffer, size_t length) {
    if(length == 0) return;
    value = bn_normalize(value);
    if(value.mantissa == 0) {
        std::snprintf(buffer, length, "0");
        return;
    }
    if(value.exponent >= 0 && value.exponent <= 5) {
        std::snprintf(buffer, length, "%lu", static_cast<unsigned long>(bn_to_u32_clamped(value, 999999999UL)));
        return;
    }
    uint32_t whole = value.mantissa / BIG_MANTISSA_SCALE;
    uint32_t fraction = (value.mantissa / 10000UL) % 100UL;
    std::snprintf(buffer, length, "%lu.%02lue%d", static_cast<unsigned long>(whole),
                  static_cast<unsigned long>(fraction), static_cast<int>(value.exponent));
}

bool bn_valid(BigNum value) {
    if(value.mantissa == 0) return value.exponent == 0;
    return value.mantissa >= BIG_MANTISSA_SCALE &&
           value.mantissa < BIG_MANTISSA_SCALE * 10UL &&
           value.exponent >= -BIG_MAX_EXPONENT && value.exponent <= BIG_MAX_EXPONENT;
}
