// Mapping in solidity is a key-value pair.

pragma solidity ^0.8.0;

contract SimpleMapping {
    // Mapping from address to uint
    mapping(address => uint) public balances;

    // Function to set the balance of a specific address
    function setBalance(address _address, uint _balance) public {
        balances[_address] = _balance;
    }

    // Function to get the balance of a specific address
    function getBalance(address _address) public view returns (uint) {
        return balances[_address];
    }
}

// In the above code, we have created a simple mapping contract that stores the balance of each address.
// The setBalance function allows us to set the balance of a specific address, and the getBalance function allows us to retrieve the balance of a specific address.
// The balances mapping is defined as mapping(address => uint) public balances, where the key is an address and the value is a uint (balance).

