// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "src/3-aave/interfaces/IAaveSupplier.sol";

contract AaveSupplier is IAaveSupplier {
    constructor() {
        // ...
    }

    function depositERC20(address asset, uint256 amount) external {
        // ...
    }

    function withdrawERC20(address asset, uint256 amount, address recipient) external {
        // ...
    }

    function depositEth() external payable {
        // ...
    }

    function withdrawEth(address recipient) external returns (uint256) {
        // ...
    }
}
