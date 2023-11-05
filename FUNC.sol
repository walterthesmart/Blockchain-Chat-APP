// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//---function function_name(parameter_list)scope returns(return_type)
// {
//    block of code
// }


 contract LearnFunction
{
    // uint256 public hey;
    uint256 hey;
    //get data with hel of function

    function getInfo() public view returns(uint256)
    {
        return hey;
    }
    // function to update the data
    function updateData( uint _hey) public 
    {
        hey = _hey;
    }
    function get(uint256 _a, uint256 _b) public view returns(uint)
    {
        uint256 newNumber = _a + _b;
        return newNumber;
    }
}