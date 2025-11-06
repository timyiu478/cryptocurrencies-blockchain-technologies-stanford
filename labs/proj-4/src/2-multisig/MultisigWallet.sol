// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "src/2-multisig/interfaces/IMultisigWallet.sol";

contract MultisigWallet is IMultisigWallet {
    address[] public admins;

    mapping (bytes32 => mapping(address => bool)) public approvals;
    mapping (bytes32 => uint256) public approvalCounts;

    constructor(address[] memory _admins) {
      if (_admins.length != 3) {
          revert BadConfig();
      }
      // ensure all admins are unique
      if (_admins[0] == _admins[1] || _admins[0] == _admins[2] || _admins[1] == _admins[2]) {
          revert BadConfig();
      }

      admins = _admins;
    }

    function approve(bytes calldata action) external {
        _approve(msg.sender, action);
    }

    function execute(bytes calldata action) external {
        bytes32 actionHash = keccak256(action);

        if (approvalCounts[actionHash] < 1) {
            revert NotAuthorized();
        } else if (approvalCounts[actionHash] < 2) {
            _approve(msg.sender, action);
        }

        // if multisig conditions are met, execute action
        (bool success,) = address(this).call(action);
        require(success);

        // reset approvals for this action
        approvals[actionHash][admins[0]] = false;
        approvals[actionHash][admins[1]] = false;
        approvals[actionHash][admins[2]] = false;

        approvalCounts[actionHash] = 0;

        emit Executed(msg.sender, action);
    }

    function transferEth(address payable recipient, uint256 amount) external {
        if (msg.sender != address(this)) {
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

    function _approve(address approver, bytes calldata action) internal {
        if (approver != admins[0] && approver != admins[1] && approver != admins[2]) {
          revert NotAuthorized();
        }

        bytes32 actionHash = keccak256(action);

        if (approvals[actionHash][approver]) {
            revert AlreadyApproved();
        }

        approvals[actionHash][approver] = true;
        approvalCounts[actionHash] += 1;

        emit Approved(approver, action);
    }
}
