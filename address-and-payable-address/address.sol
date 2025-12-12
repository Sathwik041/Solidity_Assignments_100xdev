// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Wallet{
    
    address public owner;
    uint amount;

    constructor(){
        owner=msg.sender;
    }

    function deposit()  public  payable {
        
    }

    function withdrawal() public{
        require(msg.sender==owner,"Not the owner,only owner can withdraw");

        //Get contract balance
        amount=address(this).balance;

        //Transfer entire balance to owner
        payable(owner).transfer(amount);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}