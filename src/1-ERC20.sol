// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "./ERC20/IERC20.sol";

contract ERC20 is IERC20 {
    mapping(address => uint256) private balances;

    constructor(uint256 initialSupply) {
        balances[msg.sender] = 50;
    }

    function balanceOf(address account) public view returns (uint256) {
        revert("Not implemented");
    }

    function transfer(address to, uint256 amount) public returns (bool) {
        revert("Not implemented");
    }

    function totalSupply() public view returns (uint256) {
        revert("Not implemented");
    }

    function allowance(
        address owner,
        address spender
    ) public view returns (uint256) {
        return 0;
    }

    function approve(address spender, uint256 amount) public returns (bool) {
        revert("Not implemented");
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public returns (bool) {
        revert("Not implemented");
    }
}
