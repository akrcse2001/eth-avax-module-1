// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {

    mapping(address => uint256) public vote_party;
    mapping(address => bool ) public  voteMap;
    
    function vote(uint256 voterAge, uint256 partyCode ) public {
        require(voterAge>=18, "age must be greater than 18");

        if( voteMap[msg.sender] )
            revert("voter has already voted");

        assert(partyCode>=1000 && partyCode<=9999);

        voteMap[msg.sender] = true;
        vote_party[msg.sender] = partyCode;
    }
}
