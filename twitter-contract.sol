// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1. Create a Twitter Contract
// 2. Create a mapping between user and tweet
// 3. Add function to create a tweet and save it in mapping
// 4. Create a function to get Tweet  


contract Twitter {

    // Add our code
    mapping(address => string) public tweets;


    function createTweet(string memory _tweet) public {
        tweets[msg.sender] = _tweet;
    }

    function getTweet(address _owner) public view returns (string memory) {
        return tweets[_owner]
    }
    
}
