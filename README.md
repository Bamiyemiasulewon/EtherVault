# EtherWallet Contract

## Overview
This Solidity smart contract, named EtherWallet, allows users to store and manage Ether. It provides functionalities for depositing Ether into the contract, withdrawing Ether from the contract, and checking the contract's current balance

## Features
- **Deposit Ether**: Users can deposit Ether into the contract by sending it directly to the contract address.
- **Withdraw Ether**: Only the contract owner can withdraw Ether from the contract. This ensures that only authorized parties can access the funds stored in the contract.
- **Check Balance**: Users can check the current balance of the contract.

## Usage
1. **Deploy Contract**: Deploy the EtherWallet contract to the Ethereum blockchain.
2. **Deposit Ether**: Send Ether directly to the contract address to deposit funds into the contract.
3. **Withdraw Ether**: Call the `withdraw` function with the desired amount of Ether to withdraw it from the contract. Only the contract owner can initiate withdrawals.
4. **Check Balance**: Call the `getBalance` function to retrieve the current balance of the contract.

## Smart Contract Details
- **Version**: Solidity ^0.8.18
- **License**: MIT License

## License
This project is licensed under the MIT License.


