// a simple list of things
// it is indexed
// index is how we access those "things/elements" in the array
// they start from 0 and goes incrementally towards the right. 

pragma solidity ^0.8.10;

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    // Fixed sized array, all elements initialize to 0

    uint[10] public myFixedSizeArr;
    string[5] public names;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }
}

