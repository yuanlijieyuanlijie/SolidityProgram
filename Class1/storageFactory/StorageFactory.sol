//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

import "../storageFactory/SimpleStore.sol";
contract StorageFactory{
    //SimpleStore public simpleStore;
    SimpleStore[] public ListOfSimpleStores;

    function createSimpleStoreContract() public{
        SimpleStore newSimpleStoreage = new SimpleStore();
        ListOfSimpleStores.push(newSimpleStoreage);
    }

    function sfStore(uint256 _simpleStoreIndex,uint256 _favoriteNumber)public{
        SimpleStore simpleStore = ListOfSimpleStores[_simpleStoreIndex];
        simpleStore.store(_favoriteNumber);
    }

    function sfGetStoreNumber(uint256 _simpleStoreIndex) public view returns(uint256){
        return ListOfSimpleStores[_simpleStoreIndex].retrieve();
    }

}