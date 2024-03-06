// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradeContract {
  string studName;
  int256 prelim;
  int256 midterm;
  int256 fin;
  address owner;

  constructor () {
    owner = msg.sender;
  }

  enum Status {
    Pass,
    Fail
  }

  modifier onlyOwner() {
    require (msg.sender == owner, "not owner");
    _;
  }

  modifier validGrade() {
    require(prelim > -1, "invalid grade");
    _;
  }

  function setName() public pure returns (string) {
    string name = studName;
  }

  function setPrelimGrade() public pure returns (int256) {
    int256 prelimGrade = prelim;
  }

  function setMidtermGrade() external onlyOwner validGrade (int256) {
    int256 midtermGrade = midterm;
  }

  function setFinalGrade() public pure returns (int256) {
    int256 finalGrade = fin;
  }

  function calculateGrade (int256 prelimGrade, int256 midtermGrade, int256 finalGrade) public pure returns (string memory) {
    int256 total = prelimGrade + midtermGrade + finalGrade;
    int256 aveGrade = total / 3;
    if (aveGrade > 150) {
      
    }
  }

  
}
