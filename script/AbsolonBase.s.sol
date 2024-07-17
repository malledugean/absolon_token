// SPDX-License-Identifier: CC-BY-4.0
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";
import {Absolon} from "src/Absolon.sol";


contract AbsolonScript is Script {
  function setUp() public {}

  function run() public {

    /*
    vm.startBroadcast();
    address initialOwner = <Set initialOwner address here>;
    address proxy = Upgrades.deployUUPSProxy(
      "Absolon.sol",
      abi.encodeCall(Absolon.initialize, (initialOwner))
    );
    Absolon instance = Absolon(proxy);
    console.log("Proxy deployed to %s", address(instance));
    vm.stopBroadcast();
    // */
  }
}

