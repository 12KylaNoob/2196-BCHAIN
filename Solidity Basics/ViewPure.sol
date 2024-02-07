//SPDX-License-Identifier: Mit
pragma solidity ^0.8.20;

contract ViewAndPureFunctions {
    uint public num;

    function viewFun() external view returns (uint) {
        return num;
    }

    function pureFunc() external pure returns (uint) {
        return 1;
    }

    function addToNum(uint x) external view returns (uint) {
        return  num + x;
    }

    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    function sampleBool() external pure returns (bool) {
        return true;
    }

}

//View - to retrieve and return data
//Pure - does not read nor modify the variables
//     - 