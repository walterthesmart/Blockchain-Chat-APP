// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// CONSTANTS

contract Constants
{
    // 2489 gas
    //address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    
    // 356 gas
    address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    function getConstant() public pure returns (address)
    {
        return MY_ADDR;
    }
}