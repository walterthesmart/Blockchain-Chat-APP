// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

//Constructor- can only be executed at the time of contract creation

//Base contract x
contract X
{
    string public name;

    constructor(string memory _name)
    {
        name = _name;
    }
}

//Base contract Y
contract Y 
{
    string public text;

    constructor(string memory _text)
    {
        text = _text;
    }
}

// There are 2 ways to initialize parent contract with parameters.
// Pass the parameters in the inheritance list.
contract B is X("Inout to X"), Y("Inuput to Y"){}

contract C is X,Y 
{
    // Pass the parameters here in the constructor,
    // similar to the function modifiers
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

   // Parent constructor are always called in order of inheritance
    //regardles of the order of parent contracts listed in the 
    //constructor

    // Order of constructors called:
    //1. X
    //2. Y
    //3. D
contract D is X,Y 
{
    constructor() X("X was called") Y("Y was called"){}
}

//Order of constructors called
//1. X
//2. Y
//3. E
contract E is X,Y 
{
    constructor() Y("Y was called") X("X was called"){}
}
