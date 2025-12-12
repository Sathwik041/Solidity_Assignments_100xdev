// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Voting {

    address public owner;

    struct Candidate {
        uint256 CandidateId;
        string names;
        uint256 voteCount;
    }

    Candidate[] public candidates;
    mapping(address => bool) public hasvoted;

    constructor() {
        owner = msg.sender; 
    }

    function addCandidates(string[] memory names) public {
        require(owner == msg.sender, "Only Owner could add Candidates");

        for (uint256 i = 0; i < names.length; i++) {
            candidates.push(Candidate(i, names[i], 0));
        }
    }

    function vote(uint256 candidateId) public {
        require(!hasvoted[msg.sender], "User has already voted");
        require(candidateId < candidates.length, "Candidate does not exist"); 

        candidates[candidateId].voteCount++;
        hasvoted[msg.sender] = true;
    }

    function getvotes(uint256 candidateId) public view returns (Candidate memory) {
        require(candidateId < candidates.length, "Candidate does not exist");
        return candidates[candidateId];
    }
}
