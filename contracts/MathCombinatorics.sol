// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

library MathCombinatorics {

    function factorial(uint256 n) internal pure returns (uint256 result) {
        result = 1;
        for (uint256 i = 2; i <= n; i++) {
            result *= i;
        }
    }

    function nCr(uint256 n, uint256 r) internal pure returns (uint256) {
        require(r <= n, "nCr: r > n");
        return factorial(n) / (factorial(r) * factorial(n - r));
    }

    function nPr(uint256 n, uint256 r) internal pure returns (uint256) {
        require(r <= n, "nPr: r > n");
        return factorial(n) / factorial(n - r);
    }
}
