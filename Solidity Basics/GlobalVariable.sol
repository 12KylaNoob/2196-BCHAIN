//SPDX-License-Identifier: Mit
pragma solidity ^0.8.20;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint, bool, bool, int) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        bool t = true;
        bool f = false;
        int num = 5;
        return (sender, timestamp, blockNum, t, f, num);
    }
}

//Global Variable - a variable that is available to any function or contract