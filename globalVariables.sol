// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Global variables
contract GlobalVariables
{
    
    address public owner;
    address public Myblockhash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint public timestamp;
    uint public value;
    uint public nowOn;
    address public origin;
    uint public gasprice;
    bytes public callData;
    bytes4 public Firstfour;

    constructor()
    {
        owner =msg.sender;
        // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        Myblockhash = block.coinbase;
        difficulty = block.prevrandao;
        gasLimit = block.gaslimit;
        gasprice = tx.gasprice;
        number = block.number;
        timestamp = block.timestamp;
        origin = tx.origin;
        callData = msg.data;
        Firstfour = msg.sig;
        // value = msg.value;
        // nowOn = now;
    }
}