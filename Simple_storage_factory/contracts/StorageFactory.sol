// SPDX-License-Identifier:MIT

pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorageContract () public{
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorageContract);

    }
    function sfStore (uint256 _simpleStorageIndex, uint256  _newSimplestorageNumber) public{
        //address
        //ABI
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        mySimpleStorage.store(_newSimplestorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}