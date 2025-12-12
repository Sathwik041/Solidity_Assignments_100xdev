// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Calculator{

    uint8 num;

    constructor() {
        num=0;
    }

    //Addition
    function AddNum(uint8 value) public{
        num+=value;
    }

    //Subtraction
    function SubNum(uint8 value) public{
        num-=value;
    }

    //Multiplication
    function MultiNum(uint8 value) public{
        num*=value;
    }

    //Division
    function DivNum(uint8 value) public{
        require(value!=0,"Cannot be divided by zero");
        num/=value;
    }

    //get the calculated values
    function getNum() public view returns(uint8){
        return num;
    }


}