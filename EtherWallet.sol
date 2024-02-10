// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract EtherWallet {
    address payable  public owner;
      constructor () {
        owner = payable (msg.sender);
    }
    // To enable the contract receive Ether:
    receive() external  payable {}

    // create a function that can send Ether out of this contract:
    function withdraw (uint _amount) external{
        // we only want the owner to be able to call this function:
        require(msg.sender == owner, "caller is not owner");
        //To save gas replace state variables with variables inside memory:

        // to transfer Ether from the contract to the owner:
        payable (msg.sender).transfer(_amount);

    }
    function getBalance() external view returns(uint) {
        return address(this).balance;

    } 

} 
