// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract MyGovernorTimeLock is TimelockController {
  constructor(uint256 _minDelay, address[] memory _proposers, address[] memory _executors) 
    TimelockController(_minDelay, _proposers, _executors) {}
}