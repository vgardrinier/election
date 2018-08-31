pragma solidity ^0.4.2;

  //constructor
contract Election {
  //model candidates
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }
  //Store and fecth candidates with a key value pair. Here id and struct.
  mapping (uint => Candidate) public candidates;
  //store candidates count;
  uint public candidatesCount;

  function Election() public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  //add candidate to our mapping
  function addCandidate(string _name) private {
    candidatesCount++;
    //candidatesCount + 1 is the new id. then we assign the value to that key which is the new id.
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

}
