// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract VisibiltyExample {

    function internalFunction() internal pure returns(string memory){
        return "Internal Function Called" ;
    }

    function externalFunction() external pure returns(string memory){
        return internalFunction();
    }
}