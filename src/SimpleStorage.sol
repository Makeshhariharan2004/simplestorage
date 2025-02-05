// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract SimpleStorage{
    uint256 FavouriteNo;
   
struct Person{
    uint256 Fno;
    string name;
}

Person [] public ListOfPeople;

mapping (uint256 => string) Int;
function store(uint256 _Fno) public{
    FavouriteNo = 1+ _Fno;
}

function Retrieve () view public returns(uint256) {
    return FavouriteNo;
}

function addpeople(string memory _name , uint256 _fno) public {
ListOfPeople.push(Person(_fno, _name));
Int[_fno] = _name;
}
}