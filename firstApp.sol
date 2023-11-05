// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract NFTCount
{
    uint public numberOfNFT;

    //Check total NFT
    function checkTotalNFT() public view returns(uint256)
    {
        return numberOfNFT;
    }

    //This function will inrement the NFT number
    function addNFT() public
    {
        numberOfNFT += 1;
    }

    //This function will delete the NFT count by 1
    function deleteNFT() public
    {
        numberOfNFT -= 1;
    }
}

 