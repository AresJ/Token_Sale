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
}