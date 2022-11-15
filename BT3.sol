// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract Wallet{

    mapping(address => uint) balance;
    address owner;

    constructor(){
        owner = payable(msg.sender); //owner ki value kardo jisne transaction initiate kiya but payable
    }

    function deposit() public payable{
        balance[msg.sender] = msg.value;  //msg.value is amount of ether sent in transaction
    }

    function withdraw(uint _amount) public payable{
        require(balance[msg.sender] >= _amount, "amount should be less than available balance");
        payable(msg.sender).transfer(_amount);
        balance[msg.sender] = balance[msg.sender] - _amount;
    }

    function balanceOf() public view returns(uint){
        return balance[msg.sender];
    }
}
