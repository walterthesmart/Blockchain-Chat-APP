// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//ASSERT ERROR

contract AseertStatement
{
    bool public result;

    function checkOverFlow(uint256 _num1, uint256 _num2) public
    {
         uint256 sum = _num1 + _num2;
         assert(sum <= 255);
         result = true;
    }
}