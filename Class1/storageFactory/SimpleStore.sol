// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStore{
    uint256  MyFavoriteNumber;

    address public owner;

    People[] public listOfPeople;

    mapping(string=>uint256) public nameToFavoriteNumber; 

    struct People{
        string name;
        uint256 favoriteNumber;
    }

    function store(uint256 _favoriteNumber) public virtual{
        MyFavoriteNumber = _favoriteNumber;
        owner = msg.sender;
    }

    function retrieve() public view returns (uint256){
        return MyFavoriteNumber;
    }

    function addperson(string memory _name,uint256 _favoriteNumber) public{
        listOfPeople.push(People(_name,_favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }



}