pragma solidity >=0.4.0 <0.6.0;

contract voting {
  bool public voted;
  mapping(address => bool) public voter;

  function vote() public {
    require(voter[msg.sender] == false, "Already voted!!");
    voter[msg.sender] = true;
  }
}
