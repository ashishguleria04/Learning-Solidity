// public - can be used internally and externally 

contract Calculator {

    uint256 result = 0;

    function add( uint256 num) public {
        result += num;
    }

    function subtract(uint256 num) public {
        result -= num;
    }

}

// above are examples of public functions

// below is the second type
// private - can be used within the contract

uint256 private myPrivateVar;

function myPrivateVar() private {
    // Function implementation
}


// only to be used within the contract
// when this contract is deployed, this function is not visible and cannot be used there externally
// can be only used internally within the contract




// Third one is INTERNAL
// can be used within the contact and other inheriting contracts

contract AdvancedCalculator is Calculator {

    function multiply(uint256 num) internal {
        result *= num;
    }

    function divide(uint256 num) internal {
        require(num > 0, "Cannot divide by zero");
        result /= num;
    }

    function getResult() public view returns (uint256) {
        return result;
    }

    function performAdvancedOperations(uint256 num1, uint256 num2) public {
        add(num1);
        subtract(num2);
        multiply(num1);
        divide(num2);
    }
}



// Above is the example of internal functions. 


// Fourth one is EXTERNAL
// can be used outside the contract
// can be called from other contracts and transactions

contract ExternalCalculator {

    function externalAdd(uint256 num1, uint256 num2) external pure returns (uint256) {
        return num1 + num2;
    }

    function externalSubtract(uint256 num1, uint256 num2) external pure returns (uint256) {
        return num1 - num2;
    }

    function externalMultiply(uint256 num1, uint256 num2) external pure returns (uint256) {
        return num1 * num2;
    }

    function externalDivide(uint256 num1, uint256 num2) external pure returns (uint256) {
        require(num2 > 0, "Cannot divide by zero");
        return num1 / num2;
    }
}

// Above is the example of external functions.
// These functions can be called from other contracts and transactions.