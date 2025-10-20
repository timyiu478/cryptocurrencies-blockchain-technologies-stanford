// SPDX-License-Identifier: UNLICENSED

// DO NOT MODIFY BELOW THIS
pragma solidity ^0.8.17;

import "forge-std/console.sol";

contract Splitwise {
  // Maps from debtors to a mapping from creditors to debt
  mapping(address=>mapping(address=>uint32)) internal debts;

  function lookup(address debtor, address creditor) public view returns (uint32 ret) {
      ret = debts[debtor][creditor];
  }

  function add_IOU(address creditor, uint32 amount, address[] memory path) public {
      address debtor = msg.sender;
      require(debtor != creditor, "Creditor cant be debtor");
    

      uint32 new_debt = debts[debtor][creditor] + amount;

      if (path.length > 1) {
        require(path.length <= 12, "The maximum path length is 12");
        require(creditor == path[0] && debtor == path[path.length - 1], "The path should start from creditor and end at debtor");
        
        // find min debt
        uint32 min_debt = new_debt;
        for (uint i = 0; i < path.length - 1; i++) {
          min_debt = _min(min_debt, debts[path[i]][path[i+1]]);
        }

        if (min_debt > 0) {
          for (uint i = 0; i < path.length - 1; i++) {
            debts[path[i]][path[i+1]] = _sub(debts[path[i]][path[i+1]], min_debt);
          }
          new_debt = _sub(new_debt, min_debt);
        }
      }

      debts[debtor][creditor] = new_debt;
  }

  /**
  * @dev Adds two numbers, reverts on overflow.
  * Ref: https://github.com/binodnp/openzeppelin-solidity/blob/master/contracts/math/SafeMath.sol
  */
  function _add(uint32 a, uint32 b) private pure returns (uint32) {
    uint32 c = a + b;
    require(c >= a);
    return c;
  } 

  /**
  * @dev Subtracts two numbers, reverts on overflow (i.e. if subtrahend is greater than minuend).
  */
  function _sub(uint32 a, uint32 b) private pure returns (uint32) {
    require(b <= a);
    uint32 c = a - b;

    return c;
  }

  /**
  * @dev Returns the smallest of two numbers.
  * Ref: https://github.com/binodnp/openzeppelin-solidity/blob/master/contracts/math/Math.sol
  */
  function _min(uint32 a, uint32 b) private pure returns (uint32) {
    return a < b ? a : b;
  }
}
