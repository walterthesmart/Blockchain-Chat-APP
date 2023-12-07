// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

// Interface 
// you can interact with other contracts by declaring an interface
// cannot have any functions implemented
// can inherit from other interfaces
// all declared functions must be external
// cannot declare a constructor
// cannot declare state variables

contract Counter
{
    uint public count;

    function increment() external 
    {
        count += 1;
    
    }
}

interface ICounter 
{
    function count() external view returns (uint);

    function increment() external;
}

contract MyContract
{
    function incrementCounter(address _counter) external 
    {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint)
    {
        return ICounter(_counter).count();
    }
}

// Uniswap example
interface  UniswapV2Factory
{
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface UniswapV2Pair
{
    function getReserves() 
    external 
    view 
    returns (
        uint112 reserve0,
        uint112 reserve1,
        uint32 blockTimestampLast
    );
}

contract UniswapExample
{
    address private factory = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address private dai = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    address private weth = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

    function getTokenReserves() external view returns (uint, uint)
    {
        address pair =UniswapV2Factory(factory).getPair(dai, weth);
        (uint reserve0, uint reserve1, ) = UniswapV2Pair(pair).getReserves();
        return (reserve0, reserve1);
    }
}