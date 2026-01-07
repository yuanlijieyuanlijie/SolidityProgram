//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract FoundMe{
    uint256 public myValue = 1;
    function found() public payable {
        myValue = myValue + 1;
        require(msg.value >= 1 ether, "Need to send at least 1 ether");
    }
}