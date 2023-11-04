// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


//Solidity while loop
contract whileLoop
{
    // //SYNTAX
    // while (condition) 
    // {
    //    statement or block of code if conditiion is true
    // };

    uint256[] data;
    uint256 k = 0;
    function loop() public returns(uint256[] memory)
    {
        while(k < 5)
        {
            k++;
            data.push(k);
        }
        return data;
    }
}