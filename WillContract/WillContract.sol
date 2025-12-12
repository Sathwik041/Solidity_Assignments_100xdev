// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract PassingWill{
    address owner;
     address recipient;

    constructor(){
        owner=msg.sender;
    
       
    }

    function setInitializing(address _person) public{
        owner=_person;

    }

    function setRecipient(address _recipient) public{
        recipient=_recipient;
    } 

}