// Make a contract called Calculator : 👍
// Create result variable to store result 👍
// Create functions to add, subtract, and multiply to result 👍
// Create a function to get result 👍
// Deploy 🚀 


// SPDX-License-Identifier: MIT

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;


contract Calculator {

    uint256 result = 0;

    function add( uint256 num) public {
        result += num;
    }

    function subtract(uint256 num) public {
        result -= num;
    }

    function multiply(uint256 num) public {

        result *= num; 
    }

    function get() public view returns (uint256) {
        return result;
    }


}


