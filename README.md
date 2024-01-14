# VotingSystem Smart Contract

## Overview

This Solidity smart contract, named VotingSystem, facilitates a voting system where users can cast votes for a political party. It includes basic error handling mechanisms using the `require` statement to ensure the voter's age is above 18 and the party code is a 4-digit number.

## Smart Contract Details

### State Variables

- `voteMap`: A mapping that associates each voter's address with the chosen party code.

### Functions

#### `vote(uint256 voterAge, uint256 partyCode)`

Allows a user to cast a vote by providing their age and the party code. The function includes the following checks:

- Uses `require` to ensure that the voter's age is greater than or equal to 18.
- Uses an `if` statement to check if the party code is a 4-digit number. If not, the function reverts with an error message.
- If all checks pass, the function records the vote by updating the `voteMap` for the sender's address.
