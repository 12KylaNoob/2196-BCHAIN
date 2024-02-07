//SPDX-License-Identifier: Mit
pragma solidity ^0.8.20;

contract FunctionIntro {
    function add(uint x, uint y) external pure returns (uint) {
        return (x + y);
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return (x - y);
    }
}

// Function - reusable piece of code
//          - can be called by external entities or by other functions of the same contract