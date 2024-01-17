# Voting System Smart Contract

This Solidity smart contract, named VotingSystem, facilitates a basic voting system on the Ethereum blockchain. It allows individuals to cast their votes for a political party by providing their age and the corresponding party code.

## Features

1. **Vote Functionality:** Users can cast their votes by calling the `vote` function, providing their age and the party code.

2. **Age Verification:** The contract includes a requirement that the voter must be 18 years or older to cast a vote.

3. **Party Code Validation:** The party code must be a 4-digit number between 1000 and 9999, ensuring a valid party selection.

4. **Preventing Duplicate Votes:** The contract ensures that a voter can only cast one vote by maintaining a mapping of voted addresses.

## Usage

To use this contract:

1. Deploy the contract to the Ethereum blockchain.
2. Users can call the `vote` function with their age and party code to cast their votes.

## Smart Contract Details

### State Variables

- `vote_party`: A mapping of addresses to the party code they voted for.
- `voteMap`: A mapping to keep track of whether an address has already voted.

### Functions

- `vote(uint256 voterAge, uint256 partyCode)`: Allows a user to cast a vote for a political party. Requires the voter to be 18 years or older and prevents duplicate votes.

