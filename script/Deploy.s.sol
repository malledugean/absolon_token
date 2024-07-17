// SPDX-License-Identifier: CC-BY-4.0
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

import {Defender, ApprovalProcessResponse} from "openzeppelin-foundry-upgrades/Defender.sol";
import {Upgrades, Options} from "openzeppelin-foundry-upgrades/Upgrades.sol";

import {Absolon} from "src/Absolon.sol";

contract AbsolonScript is Script {
    function setUp() public {}

    function run() public {
        ApprovalProcessResponse memory upgradeApprovalProcess = Defender.getUpgradeApprovalProcess();

        if (upgradeApprovalProcess.via == address(0)) {
            revert(
                string.concat(
                    "Upgrade approval process with id ",
                    upgradeApprovalProcess.approvalProcessId,
                    " has no assigned address"
                )
            );
        }

        Options memory opts;
        opts.defender.useDefenderDeploy = true;

        address proxy =
            Upgrades.deployUUPSProxy("Absolon.sol", abi.encodeCall(Absolon.initialize, (upgradeApprovalProcess.via)), opts);

        console.log("Deployed proxy to address", proxy);
    }
}
