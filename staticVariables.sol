// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
//LOCALVARIABLES

contract LocalVariables
{
    uint256 public myNumber;

// Function for local variables

    function local() public returns (address, uint256, uint256)
    {
    // Variables defined inside the function will not be stored on the blockchain

    uint256 i = 345;
    myNumber = i;

    i += 45;
    address myAddress = address(1);

    return ( myAddress, myNumber, i);
    }
}