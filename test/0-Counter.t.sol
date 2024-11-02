pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/0-Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
        counter.increment();
        assertEq(counter.number(), 2);
        counter.increment();
        assertEq(counter.number(), 3);
    }

    function test_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
