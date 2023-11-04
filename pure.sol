// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


//Pure
contract Pure
{
    uint256 num1 = 4;
    uint256 num2 = 10;

    function getData() public view returns(uint256, uint256)
    {
        uint256 Num1 = 30;
        uint256 Num2 = 50;
        uint256 product = Num1 * num1;
        uint256 total = Num2 + num2;
        return (product, total);

    }
}