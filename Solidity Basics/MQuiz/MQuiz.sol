// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
    uint256 public age;
    uint256 public hrsWrk;
    uint256 public hrRate;
    uint256 public totalSalary;
    address public owner;

    constructor () {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    function setAge(uint256 _age) public {
        require(_age !=0, "Age cannot be 0");
        age = _age;
    }

    function setHrsWrk(uint256 _hrsWrk) public {
        require(_hrsWrk !=0, "Hours worked cannot be 0");
        hrsWrk = _hrsWrk;
    }
    
    function setRate(uint256 _hrRate) external onlyOwner{
        require(_hrRate !=0, "Hourly rate cannot be 0");
        hrRate = _hrRate;
    }

    function calculateTotSal() external onlyOwner {
        totalSalary = hrsWrk * hrRate;
    }
}