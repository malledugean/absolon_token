// SPDX-License-Identifier: CC-BY-4.0
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

import {ProposeUpgradeResponse, Defender, Options} from "openzeppelin-foundry-upgrades/Defender.sol";

contract DefenderScript is Script {
    function setUp() public {}

    function run() public {
        Options memory opts;
        ProposeUpgradeResponse memory response = Defender.proposeUpgrade(
            0xE2EAbe4A3A5e0e3F5e1f22DA4e688AD68f5f24F1,
            "AbsolonV2.sol",
            opts
        );
        console.log("Proposal id", response.proposalId);
        console.log("Url", response.url);
    }
}
