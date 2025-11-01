// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "src/0-basic/interfaces/IBasicWallet.sol";

contract BasicWallet is IBasicWallet {
    address public owner;

    // ... your code here

    function transferEth(address payable recipient, uint256 amount) external {
        // ... your code here
    }
}
