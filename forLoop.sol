// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// SOLIDITY - Loop

contract ForLoop
{
    // syntax
    // for (init; condition; increment) 
    // {
    //     code
    // };

    uint256[] data;

    function loop() public returns(uint256[] memory)
    {
        for (uint256 i = 0; i < 5; i++)
        {
            data.push(i);
        }
        return data;
    }
}