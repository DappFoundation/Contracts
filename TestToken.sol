// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TESTtoken is ERC20 {
  uint initialSupply = 420000000
  constructor(uint256 initialSupply) ERC20("Test", "TST") {
    _mint(msg.sender, initialSupply);
  }
}
