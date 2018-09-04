pragma solidity ^0.4.2;

contract RxToken {
	// Name
    string public name = "Rx Token";
    // Symbol
    string public symbol = "DRGX";
    string public standard = "Rx Token v1.0";
    uint256 public totalSupply;
    
    mapping(address => uint256) public balanceOf;

    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        // allocate the initial supply
    }
}