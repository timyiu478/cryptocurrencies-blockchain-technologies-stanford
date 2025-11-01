// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "src/1-erc20/interfaces/IERC20Wallet.sol";

contract ERC20Wallet is IERC20Wallet {
    address public owner;

    // ... your code here

    function transferEth(address payable recipient, uint256 amount) external {
        // ... your code here
    }

    function transferERC20(address token, address recipient, uint256 amount) external {
        // ... your code here
    }

    function approveERC20(address token, address spender, uint256 amount) external {
        // ... your code here
    }
}
