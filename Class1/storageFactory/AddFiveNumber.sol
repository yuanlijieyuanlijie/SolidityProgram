// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {SimpleStore} from "./SimpleStore.sol";

contract AddFiveNumber is SimpleStore{
    function store(uint256 _newNumber) public override{
        MyFavoriteNumber = _newNumber + 5;
        
    }
}