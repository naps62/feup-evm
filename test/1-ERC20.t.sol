// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {IERC20, ERC20} from "../src/1-ERC20.sol";

contract ERC20Test is Test {
    IERC20 public token;

    function test_constructor() public {
        token = new ERC20(100);
        assertEq(token.totalSupply(), 100);
    }

    function test_initialBalance() public {
        token = new ERC20(100);
        assertEq(token.balanceOf(address(this)), 100);
    }

    function test_transfer() public {
        address alice = address(0x1111);
        token = new ERC20(100);
        token.transfer(address(this), 10);
        assertEq(token.balanceOf(address(this)), 90);
    }

    function test_transferFrom() public {
        address alice = address(0x1111);
        address bob = address(0x2222);
        token = new ERC20(100);
        token.transfer(alice, 10);
        token.approve(bob, 10);
        token.transferFrom(alice, bob, 10);
        assertEq(token.balanceOf(alice), 0);
        assertEq(token.balanceOf(bob), 10);
    }
}
