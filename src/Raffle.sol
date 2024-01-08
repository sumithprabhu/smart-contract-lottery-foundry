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
    error Raffle__NotEnoughEntranceFee();

    uint256 private immutable i_entranceFee;
    address payable[] private s_players;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() external payable{
        if(msg.value < i_entranceFee) {
            revert Raffle__NotEnoughEntranceFee();
        }

        s_players.push(payable(msg.sender));

    }

    function pickWinner() public {

    }

    /** Getter Function */

    function getEntranceFee() public view returns(uint256) {
        return i_entranceFee;
    }
}