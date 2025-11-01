// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "src/2-multisig/interfaces/IMultisigWallet.sol";

contract MultisigWallet is IMultisigWallet {
    address[] public admins;

    constructor(address[] memory _admins) {
        // ... your code here
    }

    function approve(bytes calldata action) external {
        // ... your code here
    }

    function execute(bytes calldata action) external {
        // ... your code here

        // if multisig conditions are met, execute action
        (bool success,) = address(this).call(action);
        require(success);

        emit Executed(msg.sender, action);
    }

    function transferEth(address payable recipient, uint256 amount) external {
        // ...
    }
}
