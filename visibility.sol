// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

// Functions and state variables have to declare whether they are accessible to other contracts.
// Functions can be declared as:
// public - any contract and account can call
// private-only inside the contract that defines the function
// internal- only inside contracts inherits an internal function
// external- only other contracts and accounts can call.

contract Base
{


    // Private function can only be called
    // inside this contract
    // Contracts that inherit this contract cannot call this function
    function privateFunc() private pure returns (string memory)
    {
        return "Private function called";
    }

    function testPrivateFunc() public pure returns (string memory)
    {
        return privateFunc();
    }



    // Inteernal function can be called
    // --inside this contract
    // --inside contracts that inherit this contract
    function internalFunc() internal pure returns(string memory)
    {
        return "internal function called";
    }
    function testInternalFunc() public pure virtual returns(string memory)
    {
        return internalFunc();
    }



    // Public functions can be called
    // ==inside this contract 
    // ==inside contract that inherit this contract
    // ==by other contracts and accounts
    function publicFunc() public pure returns (string memory)
    {
        return "public function called";
    }



    // External functions can only be called
    // ==by other contractsand accounts
    function externalFunc() external pure returns (string memory)
    {
        return "external function called";
    }



        // This function will not compile since we"re trying to call
        // an external function here.
        // function testExternal() public pure returns (string memory){
        //     return externalFunc();
        // }
        // State Variables
        string private privatevar = "my private variable";
        string internal internalVar = "my internal variable";
        string public publicVar = "my public variable"; 
        // State variables cannot be external so this code won't compile.
}

contract Child is Base
{
    // Inherited contracts do not have access to private functions
    // and state variables.
    // function testPrivateFunc() public pure returns (string memory)
    // {
    //     return testPrivateFunc();
    // }
    // Internal functions can be called inside child cntracts.
    function testInternalFunc() public pure override returns (string memory)
    {
        return internalFunc();
    }
}