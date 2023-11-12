// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

// Storage, memory, calldata
// storage -> on the blockvhain
// memory --> in a function
// caldata -> be an argument

contract DataLocation
{
    uint[] public arr;
    mapping(uint => address) map;

    struct Mystruct
    {
        uint foo;
    }
    mapping(uint => Mystruct) mystructs;

    function f() public {
        _f(arr, map, mystructs[1]);
    }
}