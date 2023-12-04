// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Base 
{
	uint public value = 2;

	function modify() virtual internal
    {
		value *= 2;
	}
}

contract Derived is Base 
{
	function modify() virtual override external 
    {
		value += 20;
        Base.modify(); 
	}
}