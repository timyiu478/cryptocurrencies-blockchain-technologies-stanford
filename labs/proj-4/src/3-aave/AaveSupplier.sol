// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "src/3-aave/interfaces/IAaveSupplier.sol";
import "src/3-aave/interfaces/IPool.sol";
import "src/3-aave/interfaces/IWETH.sol";
import "src/3-aave/AaveAddresses.sol";

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

contract AaveSupplier is IAaveSupplier {

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    address owner;

    IPool constant pool = IPool(AaveAddresses.POOL);
    IWETH constant weth = IWETH(AaveAddresses.WETH);

    constructor() {
        owner = msg.sender;
    }
    
    function depositERC20(address asset, uint256 amount) external onlyOwner {
        IERC20(asset).approve(address(pool), amount);
        pool.supply(asset, amount, address(this), 0);
    }
    
    function withdrawERC20(address asset, uint256 amount, address recipient) external onlyOwner {
        pool.withdraw(asset, amount, recipient);
    }

    function depositEth() external payable onlyOwner {
        uint256 balance = address(this).balance;
        weth.deposit{value: balance}();
        IERC20(address(weth)).approve(address(pool), balance);
        pool.supply(address(weth), balance, address(this), 0);
    }

    function withdrawEth(address recipient) external onlyOwner returns (uint256) {
        address aWeth = AaveAddresses.aWETH;
        uint256 balance = IERC20(aWeth).balanceOf(address(this));

        pool.withdraw(address(weth), balance, address(this));
        weth.withdraw(balance);
        (bool success,) = recipient.call{value: balance}("");

        require(success, "ETH transfer failed");

        return balance;
    }

    receive () external payable {}
}
