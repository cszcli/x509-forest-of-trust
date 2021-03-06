pragma solidity ^0.5.2;

contract Ownable {
  constructor() internal {
    owner = msg.sender;
  }

  address private owner;

  event ownershipTransferred(address, address);

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  function transferOwnership(address newOwner) public onlyOwner {
    emit ownershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}
