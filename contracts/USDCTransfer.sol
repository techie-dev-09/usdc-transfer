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
