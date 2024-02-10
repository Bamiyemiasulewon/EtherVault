// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

    // To enable the contract receive Ether:
    // create a function that can send Ether out of this contract:
    // we only want the owner to be able to call this function:
     //To save gas replace state variables with variables inside memory:
      // to transfer Ether from the contract to the owner:
      //create a function that returns the balance of the address

contract EtherWallet {
    address payable  public owner;

    constructor () {
        owner = payable (msg.sender);
    }
    receive() external  payable {}

 
    function withdraw (uint _amount) external{
        require(msg.sender == owner, "caller is not owner");
      
        payable (msg.sender).transfer(_amount);

    }
    function getBalance() external view returns(uint) {
        return address(this).balance;

    } 

} 

