// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./MathLib.sol";

contract MathCore {
    using MathLib for uint256;

    function add(uint256 a, uint256 b) external pure returns (uint256) {
        return a.add(b);
    }

    function sub(uint256 a, uint256 b) external pure returns (uint256) {
        return a.sub(b);
    }

    function mul(uint256 a, uint256 b) external pure returns (uint256) {
        return a.mul(b);
    }

    function div(uint256 a, uint256 b) external pure returns (uint256) {
        return a.div(b);
    }

    function pow(uint256 base, uint256 exponent) external pure returns (uint256) {
        return MathLib.pow(base, exponent);
    }
}

