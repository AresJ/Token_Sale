pragma solidity ^0.4.2;

contract RxToken {

	// Name
    string public name = "Rx Token";
    // Symbol
    string public symbol = "DRGX";
    string public standard = "Rx Token v1.0";
    uint256 public totalSupply;

    // Transfer
    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );
    
    // Approve
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address =>uint256)) public allowance;
    // Allowance 
    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        // allocate the initial supply
    }

    // Transfer
    function transfer(address _to, uint256 _value) public returns (bool success){
    // Exception if account doesn't have enough
        require(balanceOf[msg.sender] >= _value);
    // Transfer the balance
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
    // Transfer Event
        Transfer(msg.sender, _to, _value);
    // Return a boolean
        return true;
    }

    // Approve
    function approve(address _spender, uint256 _value) public returns (bool success) {
        // Allowance
        allowance[msg.sender][_spender] = _value;
        // Approve
        Approval(msg.sender, _spender, _value);

        return true;
    }
    // transferFrom
}