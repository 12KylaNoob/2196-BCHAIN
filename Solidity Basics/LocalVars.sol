//SPDX-License-Identifier: Mit
pragma solidity ^0.8.20;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress; // these are the state variables

    function foo() external {
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;
        i = 123;
        b = true;
        myAddress = address(1);
    }
}

// Local Variables - variables that are inside the function
// State Variables can be public or private