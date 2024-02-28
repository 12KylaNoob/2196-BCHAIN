// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    mapping(address => uint256) public valueMapping;

    //modifier to check if the value being set is not equal to 0
    modifier nonZeroValue(uint256 _value) {
        require(_value != 0, "Value cannot be zero");
        _;
    }

    //check if there's a value set for the sender
    modifier  valueHasBeenSet() {
        require(valueMapping[msg.sender] != 0, "No value set for sender");
        _;
    }

    constructor() {
        //sender will have the initial value as 100
        valueMapping[msg.sender] = 100;
    }

    //function to set a value for the sender's address
    function setValue(uint256 _value) public nonZeroValue(_value) {
        valueMapping[msg.sender] = _value;
    }

    //function to retrieve the value associated with the sender's address
    function getValue() public view valueHasBeenSet returns (uint256) {
        return valueMapping[msg.sender];
    }
}