pragma solidity ^0.8.0;

// You're allowed to extend this interface
interface IRPS {
    enum Move {
        Rock,
        Paper,
        Scissors
    }

    function play(uint256 gameId, Move move) external;

    function winner(uint256 gameId) external view returns (address);
}

contract RPS is IRPS {
    function play(uint256 gameId, Move move) external {
        revert("Not implemented");
    }

    function winner(uint256 gameId) external view returns (address) {
        revert("Not implemented");
    }
}
