// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./MathCore.sol";

/// @title ComplexSystemV2 - Ejemplos avanzados usando MathCore
/// @author Ruben
/// @notice Demuestra cómo integrar MathCore en fórmulas financieras y complejas
contract ComplexSystemV2 {
    MathCore public mathCore;

    constructor(address _mathCore) {
        mathCore = MathCore(_mathCore);
    }

    /// @notice Calcula interés compuesto: A = P * (1 + r)^n
    /// @param principal Monto inicial (escala 1e18)
    /// @param rate Tasa por periodo (escala 1e18, ej: 5% = 0.05 * 1e18)
    /// @param periods Número de periodos
    /// @return montoFinal Monto final (escala 1e18)
    function compoundInterest(
        uint256 principal,
        uint256 rate,
        uint256 periods
    ) external view returns (uint256 montoFinal) {
        // (1 + r)
        uint256 one = mathCore.scaleUp(1); // 1e18
        uint256 base = mathCore.add(one, rate); // 1e18 + r

        // (1 + r)^n
        uint256 factor = mathCore.powFast(base, periods);

        // P * (1 + r)^n / 1e18^periods (simplificado usando precisionMul en cadena)
        // Para simplificar: asumimos que principal ya está en 1e18 y usamos precisionMul
        montoFinal = mathCore.precisionMul(principal, factor);
    }

    /// @notice Calcula una métrica de riesgo simple basada en volatilidad
    /// @dev Fórmula arbitraria: riesgo = sqrt(variance) * exposure
    /// @param variance Varianza (escala normal)
    /// @param exposure Exposición (escala normal)
    /// @return riesgo Métrica de riesgo
    function riskMetric(
        uint256 variance,
        uint256 exposure
    ) external view returns (uint256 riesgo) {
        uint256 sigma = mathCore.sqrt(variance);
        riesgo = mathCore.mul(sigma, exposure);
    }

    /// @notice Precio ajustado por liquidez usando una fórmula arbitraria:
    ///         price = basePrice * sqrt(liquidity) / scale
    /// @param basePrice Precio base (escala 1e18)
    /// @param liquidity Liquidez (entero normal)
    /// @return adjustedPrice Precio ajustado (escala 1e18)
    function liquidityAdjustedPrice(
        uint256 basePrice,
        uint256 liquidity
    ) external view returns (uint256 adjustedPrice) {
        uint256 liqRoot = mathCore.sqrt(liquidity); // sqrt(L)
        uint256 liqScaled = mathCore.scaleUp(liqRoot); // sqrt(L) en 1e18
        adjustedPrice = mathCore.precisionMul(basePrice, liqScaled);
    }

    /// @notice Calcula combinaciones posibles de posiciones (nCr) como ejemplo de uso combinatorio
    /// @param n Total de activos/slots
    /// @param r Activos/slots seleccionados
    /// @return combinaciones Número de combinaciones posibles
    function portfolioCombinations(
        uint256 n,
        uint256 r
    ) external view returns (uint256 combinaciones) {
        combinaciones = mathCore.nCr(n, r);
    }

    /// @notice Devuelve el promedio seguro entre dos precios
    function safeAveragePrice(
        uint256 priceA,
        uint256 priceB
    ) external view returns (uint256) {
        return mathCore.avg(priceA, priceB);
    }
}
