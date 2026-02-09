// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title MathAdvanced - Funciones matemáticas avanzadas
/// @notice Extensión de MathLib con operaciones complejas
library MathAdvanced {

    /// @notice Valor absoluto
    function abs(int256 x) internal pure returns (uint256) {
        return uint256(x >= 0 ? x : -x);
    }

    /// @notice Máximo entre dos valores
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /// @notice Mínimo entre dos valores
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }

    /// @notice Promedio seguro
    function avg(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a & b) + ((a ^ b) >> 1);
    }

    /// @notice Raíz cuadrada usando método de Babylon
    function sqrt(uint256 x) internal pure returns (uint256) {
        if (x == 0) return 0;
        uint256 z = (x + 1) / 2;
        uint256 y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
        return y;
    }

    /// @notice Exponenciación rápida (binary exponentiation)
    function powFast(uint256 base, uint256 exp) internal pure returns (uint256 result) {
        result = 1;
        while (exp > 0) {
            if (exp & 1 == 1) result *= base;
            base *= base;
            exp >>= 1;
        }
    }
}
