// SPDX-License-identifier: MIT
pragma solidity ^0.8.0;

contract Fallbacking {

    event Log(uint gas);

    fallback() external payable {
        emit Log(gasLeft());
    }
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

}
