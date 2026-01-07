// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface interTest{
    function balanceOf(address _user) external view returns (uint256 );
    function setBalanceOf(address _user,uint256 value) external ;
}
contract Owner
{
    address public owner;
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
}

contract constractNameFather {
    uint256 public aaa = 1994;
}

contract constractNameChild is Owner{
    uint256 public bbb = 2000;
    string public  adb = "hello world";
    bool public flag = true;
    uint256 public max = type(uint256).max;
    uint256[] public arr;
    

    struct Userinfo {
        string name;
        uint256 id;
    }

    Userinfo[] public arms;

    mapping(address=>Userinfo) public userinfo;
    mapping (address=>mapping (address=>uint256)) public aaaaaa;

     
    constructor()
    {
         owner =  payable (msg.sender);
    }

    function setOwner(address _user) public returns(bool){
        owner = _user;
        return true;
    }

    function setOwner2(address _user) public onlyOwner returns(bool){
        owner = _user;
        return true;
    }

    function isOwner(address _user) public  view returns(bool){
        if(owner == _user)
            return true;
        else 
            return false;
    }

    function setOwner3(address _user,address _USDTAddress) public onlyOwner returns(bool){
        require(interTest(_USDTAddress).balanceOf(address(this)) > 1 , "not enough USDT");
        owner = _user;
        return true;
    }
}




