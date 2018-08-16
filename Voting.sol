pragma solidity ^0.4.18;

mapping(bytes32 => uint8) public votesReceived;

bytes32[] public candidateList;

// Constructor
function Voting(bytes32[] candidateNames) public{
    candidateList = candidateNames;
}

// Votes so far
function totalVotesFor(bytes32 candidate) view public returns (uint8){
    require(validCandidate(candidate));
    return votesReceived[candidate];
}

// Casting vote
function voteForCandidate(bytes32 candidate) view public returns (bool){
    for(uint i=0; i<candidateList.length; i++)
    {
        if(candidateList[i] == candidate)
        {
            return true;
        }
    }
    return false;
}
