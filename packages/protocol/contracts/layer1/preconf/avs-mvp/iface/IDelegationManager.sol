// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title IDelegationManager
/// @custom:security-contact security@taiko.xyz
interface IDelegationManager {
    event OperatorSharesIncreased(
        address indexed operator, address staker, address strategy, uint256 shares
    );

    /// @dev Called internally in EL by Strategy Manager
    function increaseDelegatedShares(address operator, address strategy, uint256 shares) external;

    /// @dev Called by the AVS Stake Registry
    function getOperatorShares(
        address operator,
        address[] memory strategies
    )
        external
        view
        returns (uint256[] memory);
}
