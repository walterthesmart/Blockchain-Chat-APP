// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

// Complie time fixed size array
//

contract Array
{
    //Several ways to initialize n array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    //Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns(uint)
    {
        return arr[i];
    }

    // Solidity can return the entire array.
    //But this function should be avoided for
    //arrays thay can grow indefinitely in lenght
    function getArr() public view returns(uint[] memory)
    {
        return arr;
    
    }

    function push(uint i) public 
    {
        arr.push(i);
    }
    function pop() public 
    {
        arr.pop();
    }
    function getLength() public view returns (uint)
    {
        return arr.length;
    }
    function remove(uint index) public
    {
        // Deletes does not change the array length
        // it resets the value at index to it's default value,
        delete arr[index];
    }
    function examples() pure external 
    {
        //creates array in memory, only fixed sixe can be created
        uint[] memory a = new uint[](5);
    }
}