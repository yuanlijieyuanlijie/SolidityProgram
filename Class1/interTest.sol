// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Faucet{
    mapping(address=>uint256 ) public balances;
    function balanceOf(address _user) public view returns (uint256) {
        return balances[_user];


    }

     function setBalanceOf(address _user,uint256 value) public returns (bool){
        balances[_user] = value;
        return true;
    }

    
    
}