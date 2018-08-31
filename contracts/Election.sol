pragma solidity ^0.4.2;


contract Election {
  //state variable. public means it has a getter function on its own.
  string public candidate;
  //constructor to set the value of a candidate name
  // store it and read it
  function Election() public {
    candidate = "Candidate 1";
  }
}
