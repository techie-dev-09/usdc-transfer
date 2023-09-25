# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```

# USDCInteraction Contract

A simple Solidity contract to interact with USDC.

## 🚫 Issue: EVM Revert

Encountering an EVM revert error when executing transactions.

### Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}

contract USDCInteraction {
    IERC20 public USDC = IERC20(0xD87Ba7A50B2E7E660f678A895E4B72E7CB4CCd9C);

    function approveUSDC(address spender, uint256 amount) external returns (bool) {
        return USDC.approve(spender, amount);
    }

    function transferUSDC(address recipient, uint256 amount) external returns (bool) {
        return USDC.transfer(recipient, amount);
    }

    function transferFromUSDC(address sender, address recipient, uint256 amount) external returns (bool) {
        return USDC.transferFrom(sender, recipient, amount);
    }

    function getAllowanceUSDC(address owner, address spender) external view returns (uint256) {
        return USDC.allowance(owner, spender);
    }
}
```

# Error Message

Transaction has been reverted by the EVM:
{
"blockHash": "0x3ba70ec628fa9d039f9e72d2afe2eea1f364abda33ce826f0ccaa4ffad8a486d",
...
"status": false,
...
"type": "0x2",
"events": {}
}

Transfer is giving reverted error

USDC coin address
https://goerli.etherscan.io/address/0xD87Ba7A50B2E7E660f678A895E4B72E7CB4CCd9C

Deployed contract address
https://goerli.etherscan.io/address/0x644E879687F09A982B862351C09fBa56Be367c9D#code
