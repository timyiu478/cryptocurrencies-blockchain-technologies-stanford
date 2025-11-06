// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "src/1-erc20/interfaces/IERC20Wallet.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

contract ERC20Wallet is IERC20Wallet {
    using SafeERC20 for IERC20;

    address public owner;

    constructor() {
      owner = msg.sender;
    }

    function transferEth(address payable recipient, uint256 amount) external {
      if (msg.sender != owner) {
        revert NotAuthorized();
      }
      if (address(this).balance < amount) {
        revert InsuffientBalance();
      }

      (bool success, ) = address(recipient).call{value: amount}("");

      if (!success) {
        revert FailedTransfer();
      }
    }

    function transferERC20(address token, address recipient, uint256 amount) external {
      if (msg.sender != owner) {
        revert NotAuthorized();
      }

      IERC20(token).safeTransfer(recipient, amount);
    }

    function approveERC20(address token, address spender, uint256 amount) external {
      if (msg.sender != owner) {
        revert NotAuthorized();
      }

      // reset to zero first to prevent approve race condition
      bool success1 = IERC20(token).approve(spender, 0);

      require(success1, "ERC20 approval failed");

      bool success2 = IERC20(token).approve(spender, amount);

      require(success2, "ERC20 approval failed");
    }
}
