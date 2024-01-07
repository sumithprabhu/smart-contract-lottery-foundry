//SPDX-Identifier-License: MIT

// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// internal & private view & pure functions
// external & public view & pure functions

pragma solidity ^0.8.18;

/**
 * @title Raffle contract
 * @author Sumith Prabhu
 */
contract Raffle {
    uint256 private immutable i_entranceFee;
    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }
    function enterRaffle() public payable{

    }

    function pickWinner() public {

    }

    /** Getter Function */

    function getEntranceFee() public view returns(uint256) {
        return i_entranceFee;
    }
}