// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Voting{

    mapping(uint8=>uint8) private Candidates; //CandidateId=>TotalVoteCount
    uint8 public Totalcandidates;

    modifier Candi(uint8 candidateId){
         require(candidateId<=Totalcandidates,"Enter Correct CandidateId number");
         _;
    }

    
    function addCandidates(uint8 TotalCand) public {
        Totalcandidates=TotalCand;
    }

    function vote(uint8 candidateId) public Candi(candidateId) {
        Candidates[candidateId]+=1;
    }


    function getVotes(uint8 candidateId) public Candi(candidateId) view returns(uint8){
        return Candidates[candidateId];
    }
}

