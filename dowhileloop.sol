// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// SOLIDITY- Do while loop

contract DoWhile 
{
    // do {
    //     block of statement to be executed
    // } 


    // while (condition);
    uint256[] data;
    uint256 j = 0;

    function loop() public returns(uint[] memory)
    {
        do 
        {
            j++;
            data.push(j);
        }
        while(j < 5);
        return data;
    }


}

