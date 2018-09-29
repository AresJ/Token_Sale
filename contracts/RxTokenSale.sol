pragma solidity ^0.4.2;
import "./RxToken.sol";

contract RxTokenSale {
    address admin;
    RxToken public tokenContract;
    uint256 public tokenPrice = 1000000000000; 
    uint256 public tokensSold;

    event Sell(address _buyer, uint256 _amount);
    constructor(RxToken _tokenContract, uint256 _tokenPrice) public {
        // Assign an admin
        admin = msg.sender;
        // Token Contract
        tokenContract = _tokenContract;
        // Token Price
        tokenPrice = _tokenPrice;
    }

    function multiply(uint x, uint y) internal pure returns (uint z){
        require(y == 0 || (z = x * y) / y == x);
    }
    //Buy Tokens
    function buyTokens(uint256 _numberOfTokens) public payable {
       
        // Require that value is equal to tokens
        require(msg.value == multiply(_numberOfTokens, tokenPrice));
        // Require that the contract has enough tokens
        require(tokenContract.balanceOf(this) >= _numberOfTokens);
        // Require that a transfer is successful
        // Keep track of number of tokens sold
        tokensSold += _numberOfTokens;
        // Emit Sell Event
        emit Sell(msg.sender, _numberOfTokens);
    }
}