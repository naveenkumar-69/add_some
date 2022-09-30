// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Addition {
    address public owner;
    uint256 public x;

    constructor() {
        owner = msg.sender;
        x = 5;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function add (uint256 y) public view onlyOwner returns (uint256) {
        require(y > x, "y should be larger than x");
        return x+y;
    }

    function updateX(uint _x) public onlyOwner {
        x = _x;
    }
}