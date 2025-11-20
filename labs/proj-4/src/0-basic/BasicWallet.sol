// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "src/0-basic/interfaces/IBasicWallet.sol";

contract BasicWallet is IBasicWallet {
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

      (bool success, ) = recipient.call{value: amount}("");

      if (!success) {
        revert FailedTransfer();
      }
    }
    
    receive() external payable {}
}
