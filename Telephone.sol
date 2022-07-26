// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Telephone {

  address public owner;

  constructor() public {
    owner = msg.sender;
    }
    function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
      }
    }
  }
  
  interface ITelephone{
     function changeOwner(address _owner) external;
}


contract TelephoneAttack {
    address telephone;

    constructor(address _telephone) public {
        telephone = _telephone;
    }
}





