// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./MathCore.sol";

/// @title ComplexSystem - Sistema modular que usa MathCore como motor matemático
/// @notice Ejemplo de arquitectura escalable y componible
contract ComplexSystem {
    MathCore public math;

    constructor(address mathCoreAddress) {
        math = MathCore(mathCoreAddress);
    }

    function computeComplexFormula(uint256 x, uint256 y)
        external
        returns (uint256)
    {
        // Fórmula arbitraria: (x + y)^2 - (x * y)
        uint256 sum = math.add(x, y);
        uint256 squared = math.pow(sum, 2);
        uint256 product = math.mul(x, y);

        return math.sub(squared, product);
    }
}
