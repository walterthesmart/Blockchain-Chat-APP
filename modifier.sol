// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//FUNCTION MODIFIER

//IMPORTANT NOTES
//--Modifier are code that can be run before and after the function call
//--Generally used for 3 reasons
//--Restrict access, Validate inputs, Guard against reentrancy-hack

contract FunctionModifier
{
    address public owner;
    uint256 x = 10;
    bool public locked;

    constructor()
    {
        owner = msg.sender; 
    }

    modifier onlyOwner()
    {
        require(owner == msg.sender, "Not Owner");
        _;  
    }
    modifier validateData(address _addr)
    {
        require(_addr != address(0), "Not address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner)
    {
        owner = _newOwner;
    }
    modifier noReentrancy()
    {
        require(!locked, "No reentrancy");
        _;
        locked = false;
    }
    function decrement(uint256 i) public noReentrancy
    {
       x -= 1;
       if (i > 1)
       {
        decrement(i-1);
       } 
    }

}