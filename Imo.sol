// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract Me {
            address public senderOne;
            address public senderTwo;
            address public senderThree;
            
             function callMe(address moAddress)public {
                    senderOne = msg.sender;
                    senderTwo = callMeSameContract();
                    senderThree = IMo(moAddress).callMeDifferentContract();
            }
    }
        