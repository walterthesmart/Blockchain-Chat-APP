//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyFirstContract
{
    //string public hey = "Hey Walter";
   // uint256 public num = 4;


    string public hey;
    uint256 public no;

  // constructor(string memory _hey, uint _no)
  // {
    //    hey = _hey;
      //  no = _no;
   //
   
   function addInfo(string memory _hey, uint _no) public
   {
        hey = _hey;
        no = _no;
   }
}