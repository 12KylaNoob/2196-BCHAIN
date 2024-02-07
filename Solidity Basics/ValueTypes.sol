//SPDX-License-Identifier: Mit
pragma solidity ^0.8.20;

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 0 to 2**256 - 1
                         //        uint8   0 to 2**8 - 1
                         //        uint16  0 to 2**16 - 1
    int public i = -123; // int = int256   -2**255 to 2**255 - 1
                         //       int128   -2**127 to 2**127 - 1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x4838B106FCe9647Bdf1E7877BF73cE8B0BAD5f97;
    bytes32 public b32 = 0xca9e852e1da7f7ec9b2e8e2a5e809c700798ac9e2003c0707eb0a1ecd050a223;
    string public hello = "hello!";
}

// 