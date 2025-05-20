// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    uint256 public myFavoriteNumber;

    // uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public dev = Person(1, "Emmanuel");

    Person[] public allDevs;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function addDev(uint256 _favoriteNumber, string memory _name) public {
        allDevs.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function getFavoriteNumber() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
