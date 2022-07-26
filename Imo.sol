// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Imo{
    function callMeDifferentContract()external returns(address);
}
    contract Me {
            address public senderOne;
            address public senderTwo;
            address public senderThree;
            
             function callMe(address moAddress)public {
                    senderOne = msg.sender;
                    senderTwo = callMeSameContract();
                    senderThree = IMo(moAddress).callMeDifferentContract();
            }
            
            function callMeSameContract() public view returns(address){
                return msg.sender;
            }
    }
     contract Mo {
            function callMeDifferentcontract()public view returns(address){
                return msg.sender;
            }
        }
        
