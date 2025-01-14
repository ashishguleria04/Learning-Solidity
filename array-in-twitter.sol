    
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Twitter {

    // Add our code
    mapping(address => string[] ) public tweets;


    function createTweet(string memory _tweet) public {
        tweets[msg.sender].push(_tweet);
    }

    function getTweet(address _owner, uint _i) public view returns (string memory) {
        return tweets[_owner][_i];
    }
    
    function getAllTweets(address _owner) public view returns (string[] memory) {
        return tweets[_owner];
    }
}

/*
This contract represents a simple Twitter-like application on the Ethereum blockchain.
- The `tweets` mapping stores an array of tweets for each address.
- The `createTweet` function allows users to add a new tweet to their address.
- The `getTweet` function allows anyone to retrieve a specific tweet by providing the owner's address and the index of the tweet.
*/

