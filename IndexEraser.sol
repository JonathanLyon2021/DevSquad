// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract IndexEraser{

    uint[] private arr1 = [0,1,2,3,4,5,6,7,8];

function removeIndex(uint index)public returns(uint[] memory _arr){
        require(index < arr1.length -1, "INDEX OUT OF BOUNDS!!");
        _arr = arr1;
        _arr[index] = _arr[_arr.length -1];
        arr1 = _arr;
        arr1.pop(); 
    }

    function viewArray()public view returns(uint[] memory){
        return arr1;
    }
}
