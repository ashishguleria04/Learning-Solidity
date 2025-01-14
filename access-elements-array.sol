// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;


contract Array {
    
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    //Fixed sized array, all elements initialize to 0

    uint[10] public myFixedSizeArr;
    string[5] public names;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }
}

// In the above code, we learn how to access elements in an array
// Above 'i' is the index and we can get element on a particular index through 'i'
