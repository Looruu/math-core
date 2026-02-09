// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./MathCore.sol";

/// @title ComplexSystemV1 - Ejemplo básico de integración con MathCore
/// @author Ruben
/// @notice Demuestra cómo usar MathCore para ejecutar fórmulas compuestas
contract ComplexSystemV1 {
    MathCore public mathCore;

    constructor(address _mathCore) {
        mathCore = MathCore(_mathCore);
    }

    /// @notice Calcula la fórmula: (x + y)^2 - (x * y)
    /// @param x Primer número
    /// @param y Segundo número
    /// @return resultado Resultado de la fórmula
    function computeComplexFormula(uint256 x, uint256 y)
        external
        view
        returns (uint256 resultado)
    {
        uint256 sum = mathCore.add(x, y);        // x + y
        uint256 squared = mathCore.pow(sum, 2);  // (x + y)^2
        uint256 product = mathCore.mul(x, y);    // x * y

        resultado = mathCore.sub(squared, product);
    }

    /// @notice Ejemplo adicional: (x^3 + y^3)
    function sumOfCubes(uint256 x, uint256 y)
        external
        view
        returns (uint256)
    {
        uint256 x3 = mathCore.pow(x, 3);
        uint256 y3 = mathCore.pow(y, 3);
        return mathCore.add(x3, y3);
    }

    /// @notice Ejemplo adicional: promedio simple usando MathCore
    function simpleAverage(uint256 a, uint256 b)
        external
        view
        returns (uint256)
    {
        uint256 sum = mathCore.add(a, b);
        return mathCore.div(sum, 2);
    }
}
