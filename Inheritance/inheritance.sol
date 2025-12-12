// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Parent{
    function greet()public virtual pure returns(string memory){
    return "Hello Son";
    }
}

contract Child is Parent{
    function greet()public override pure returns(string memory){
    return "Hello Fam!";
    }
}