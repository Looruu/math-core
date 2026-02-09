// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

library MathPrecision {
    uint256 internal constant SCALE = 1e18;

    function precisionMul(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a * b) / SCALE;
    }

    function precisionDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "precisionDiv: division por cero");
        return (a * SCALE) / b;
    }

    function scaleUp(uint256 x) internal pure returns (uint256) {
        return x * SCALE;
    }

    function scaleDown(uint256 x) internal pure returns (uint256) {
        return x / SCALE;
    }
}
