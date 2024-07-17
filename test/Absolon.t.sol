// SPDX-License-Identifier: CC-BY-4.0
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";
import {Absolon} from "src/Absolon.sol";

contract AbsolonTest is Test {
  Absolon public instance;

  function setUp() public {
    address initialOwner = vm.addr(1);
    address proxy = Upgrades.deployUUPSProxy(
      "Absolon.sol",
      abi.encodeCall(Absolon.initialize, (initialOwner))
    );
    instance = Absolon(proxy);
  }

  function testName() public view {
    assertEq(instance.name(), "Absolon");
  }
}