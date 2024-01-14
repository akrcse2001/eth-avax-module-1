// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {

    mapping(address => uint256) public voteMap;
    
    function vote(uint256 voterAge, uint256 partyCode ) public {
        require(voterAge>=18, "age must be greater than 18");

        if( partyCode<1000 && partyCode>9999 )
            revert("party code should be of 4 digits");

        voteMap[msg.sender] = partyCode;
    }
}
