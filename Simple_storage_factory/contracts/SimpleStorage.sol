// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //state  your version

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is 
    uint256  myFavoriteNumber ;

    struct Person {
        uint favoriteNumber;
        string name;
    }

    Person [] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) virtual public {
        myFavoriteNumber = _favoriteNumber;
    }
    // view pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson (string memory _name, uint256 _favoriteNumber ) public {
        listOfPeople.push( Person(_favoriteNumber, _name));
        nameToFavoriteNumber [_name] = _favoriteNumber;
    }
  }