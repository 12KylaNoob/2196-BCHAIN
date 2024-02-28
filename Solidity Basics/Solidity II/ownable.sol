// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    constructor () {
        owner = msg.sender;
    }

    //modifier to only allow the specific owner to perform the function
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    //change the owner
    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanCallThisFunc() external onlyOwner {

    }
    
    function anyOneCanCall() external {

    }
}