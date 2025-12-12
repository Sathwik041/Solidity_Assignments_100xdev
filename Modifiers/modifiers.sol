// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract OwnerOnly{
    address public owner;

    constructor(){
        owner=msg.sender;
    }
    modifier OnlyOwner{
        require(msg.sender==owner,"You are not the Owner");
        _;
    }

    function protectedFunction()  public view OnlyOwner returns(string memory){
        return "Function is Protected";

    }


}