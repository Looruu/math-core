// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./MathLib.sol";
import "./MathAdvanced.sol";
import "./MathCombinatorics.sol";
import "./MathPrecision.sol";

/// @title MathCore - Núcleo matemático modular para sistemas Web3
/// @author Ruben
/// @notice Expone operaciones matemáticas básicas, avanzadas y de precisión extendida
contract MathCore {
    using MathLib for uint256;

    /// @notice Suma dos números
    function add(uint256 a, uint256 b) external pure returns (uint256) {
        return a.add(b);
    }

    /// @notice Resta dos números (restringida a resultados no negativos)
    function sub(uint256 a, uint256 b) external pure returns (uint256) {
        return a.sub(b);
    }

    /// @notice Multiplica dos números
    function mul(uint256 a, uint256 b) external pure returns (uint256) {
        return a.mul(b);
    }

    /// @notice Divide dos números (no permite división por cero)
    function div(uint256 a, uint256 b) external pure returns (uint256) {
        return a.div(b);
    }

    /// @notice Potencia simple base^exponente
    function pow(uint256 base, uint256 exponent) external pure returns (uint256) {
        return MathLib.pow(base, exponent);
    }

    // =========================
    //  FASE 2 - AVANZADAS
    // =========================

    /// @notice Raíz cuadrada de x
    function sqrt(uint256 x) external pure returns (uint256) {
        return MathAdvanced.sqrt(x);
    }

    /// @notice Máximo entre dos valores
    function max(uint256 a, uint256 b) external pure returns (uint256) {
        return MathAdvanced.max(a, b);
    }

    /// @notice Mínimo entre dos valores
    function min(uint256 a, uint256 b) external pure returns (uint256) {
        return MathAdvanced.min(a, b);
    }

    /// @notice Promedio seguro entre dos valores
    function avg(uint256 a, uint256 b) external pure returns (uint256) {
        return MathAdvanced.avg(a, b);
    }

    /// @notice Exponenciación rápida base^exp usando binary exponentiation
    function powFast(uint256 base, uint256 exp) external pure returns (uint256) {
        return MathAdvanced.powFast(base, exp);
    }

    // =========================
    //  FASE 2 - COMBINATORIA
    // =========================

    /// @notice Factorial de n
    function factorial(uint256 n) external pure returns (uint256) {
        return MathCombinatorics.factorial(n);
    }

    /// @notice Combinaciones nCr
    function nCr(uint256 n, uint256 r) external pure returns (uint256) {
        return MathCombinatorics.nCr(n, r);
    }

    /// @notice Permutaciones nPr
    function nPr(uint256 n, uint256 r) external pure returns (uint256) {
        return MathCombinatorics.nPr(n, r);
    }

    // =========================
    //  FASE 2 - PRECISIÓN EXTENDIDA
    // =========================

    /// @notice Multiplicación con escala fija 1e18
    function precisionMul(uint256 a, uint256 b) external pure returns (uint256) {
        return MathPrecision.precisionMul(a, b);
    }

    /// @notice División con escala fija 1e18
    function precisionDiv(uint256 a, uint256 b) external pure returns (uint256) {
        return MathPrecision.precisionDiv(a, b);
    }

    /// @notice Escala un valor entero a formato 1e18
    function scaleUp(uint256 x) external pure returns (uint256) {
        return MathPrecision.scaleUp(x);
    }

    /// @notice Reduce un valor desde formato 1e18 a entero
    function scaleDown(uint256 x) external pure returns (uint256) {
        return MathPrecision.scaleDown(x);
    }
}
