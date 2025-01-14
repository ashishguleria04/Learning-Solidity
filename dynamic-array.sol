// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayExample {
    // This is a dynamic array, it can be resized

    uint[] public dynamicArray;

    // This is a fixed-seze array, it cannot be resized

    uint[5] public fixedArray;

    function addToDynamicArray(uint value) public {
        // Add a new element to the end of the array
        dynamicArray.push(value);
    }

    function getDynamicArrayLength() public view returns (uint) {
        // Return the length of the dynamic array
        return dynamicArray.length;
    }
}