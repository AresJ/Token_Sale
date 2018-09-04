pragma solidity ^0.4.2;

contract RxToken {
	// Constructor 
	// Set the total number of tokens
	// Read the total number of tokens
    uint256 public totalSupply;

    constructor() RxToken() public {
        totalSupply = 1000000;
    }
}