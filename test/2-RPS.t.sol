pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import {IRPS, RPS} from "../src/2-RPS.sol";

contract RPSTest is Test {
    RPS public rps;

    address constant alice = address(0x1111);
    address constant bob = address(0x2222);

    function setUp() public {
        rps = new RPS();
    }

    function test_play() public {
        vm.prank(alice);
        rps.play(0, IRPS.Move.Rock);

        vm.prank(bob);
        rps.play(1, IRPS.Move.Paper);

        assertEq(rps.winner(0), address(bob));

        // TODO: can you make this game secure, by using a commit-reveal scheme?
    }
}
