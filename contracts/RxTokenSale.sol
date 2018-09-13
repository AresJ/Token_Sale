pragma solidity ^0.4.2;
import "./RxToken.sol";

contract RxTokenSale {
    address admin;
    RxToken public tokenContract;
    uint256 public tokenPrice = 1000000000000; 
    constructor(RxToken _tokenContract, uint256 _tokenPrice) public {
        // Assign an admin
        admin = msg.sender;
        // Token Contract
        tokenContract = _tokenContract;
        // Token Price
        tokenPrice = _tokenPrice;
    }

    //Buy Tokens
    function buyTokens(uint256 _numberOfTokens) public payable {
       
        // Require that value is equal to tokens
        // Require that the contract has enough tokens
        // Require that a transfer is successful
        // Keep track of number of tokens sold
        // Emit Sell Event
    }
}