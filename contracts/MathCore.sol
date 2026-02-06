// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title MathLib - Librería matemática modular para operaciones seguras
/// @author Ruben
/// @notice Funciones matemáticas reutilizables y auditables
library MathLib {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "MathLib: resta negativa");
        return a - b;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "MathLib: division por cero");
        return a / b;
    }

    function pow(uint256 base, uint256 exponent) internal pure returns (uint256 result) {
        result = 1;
        for (uint256 i = 0; i < exponent; i++) {
            result *= base;
        }
    }
}
