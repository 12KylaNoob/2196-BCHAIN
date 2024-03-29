// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
    //define a mapping to store values associated with addresses
    mapping(address => uint256) public valueMapping;

    //function to set a value for the sender's address
    function setValue(uint256 _value) public {
        valueMapping[msg.sender] = _value;
    }

    //function to retrieve the value associated with the sender's address
    function getValue() public view returns (uint256) {
        return valueMapping[msg.sender];
    }
}