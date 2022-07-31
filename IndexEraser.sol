// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract IndexEraser{

    uint[] private arr1 = [0,1,2,3,4,5,6,7,8];

    function viewArray()public view returns(uint[] memory){
        return arr1;
    }
}
