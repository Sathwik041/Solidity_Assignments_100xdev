// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract UserBalances{
    
    mapping(address=>uint8) private balances;

    function deposit(uint8 amount) public{
        balances[msg.sender]+=amount;
    }
    function getBalance() public view returns(address,uint8) {
    return (msg.sender, balances[msg.sender]);
    }   
    
}
