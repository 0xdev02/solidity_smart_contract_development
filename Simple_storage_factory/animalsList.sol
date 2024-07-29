// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AnimalList {
    //list of animals
    string [] public animals ;

    //constructor function for intial values
    constructor() {
        animals.push("Cat");
        animals.push("Dog");
        animals.push("Elephant");
    }

    //function to add animals   
    function addAnimals  (string memory _name) public{
        animals.push(_name);
    }

    //function to view list
    function getAnimals() public view returns  (string[] memory){
        return animals;
    }

}