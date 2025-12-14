// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract PassingWill{
     address owner;
     address payable recipient;
     //need to have variables for keepig the time till when owner not getback,transfer to recipient
     uint StartTime;
     uint LastVisited;
     uint FiveYears;

     
    constructor(address payable _recipient){
        owner=msg.sender;
        recipient=_recipient;
        StartTime=block.timestamp;
        FiveYears=5*365*24*60;
        LastVisited=block.timestamp;       
    }

    modifier onlyOwner(){
        require(owner==msg.sender,"Aap nahi mera Maalik!");
        _;
    }

    modifier onlyRecipient(){
        require(msg.sender==recipient,"Hattt!Kon hai re thu");
        _;
    }

    function deposit() public payable onlyOwner{
        LastVisited=block.timestamp;
    }

    function ping() public onlyOwner{ //reminding owner is alive
        LastVisited=block.timestamp;
    } 

    function claim() external onlyRecipient{
        
        require(LastVisited<block.timestamp-FiveYears);
        payable(recipient).transfer(address(this).balance);
    }

}
