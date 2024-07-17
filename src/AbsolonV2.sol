// SPDX-License-Identifier: CC-BY-4.0
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import {Absolon} from "./Absolon.sol";

/// @title AbsolonV2
/// @notice An improved Absolon with mint .
/// @custom:oz-upgrades-from Absolon
contract AbsolonV2 is Absolon {
    /*//////////////////////////////////////////////////////////////
                                FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Allow token mint .
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
