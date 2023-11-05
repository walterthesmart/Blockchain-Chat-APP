// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract DataTypes
{
    // bool public hey;
    // bool public no = true;

    //UINT stands for unsigned integer, meaning non negative integers

    // uint8 //ranges 0 - 2**8 -1 //255
    // uint16 //ranges 0 - 2**16 - 1 // 65535

    // uint8 public u8 = 1;
    // uint public u256 = 465;
    // uint public u = 123;

    // int256 public i8 = -1;
    // int public i256 = 456;
    // int public i = -1234;

    //int public minInt = type(int).min;
    //int public maxInt = type(int).max;

    // In solidity, the data types represent a sequence if bytes, so generally, there are two types of array
    //-----fixed-sized bytes arrays
    //--dynamically-sized bytes arrays
    //-- so when you define bytwe in smart contract it represent dyanmic bytes

    // bytes1 public a;
    // bytes1 public b;


    // bytes1 public a = 0xb5;
   //  bytes1 public b = 0x56;

   //ADDRESS TYPES

   // address public hey;
   // address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


   //DEFAULT VALUES

   bool public defaultbool;
   uint public number;
   int public defaultInt;
   address public hey;



}