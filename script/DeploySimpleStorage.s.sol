// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        console.log("SimpleStorage deployed to:", address(simpleStorage));
        return simpleStorage;
    }
}

// 0x5FbDB2315678afecb367f032d93F642f64180aa3 ==> localhost
// 0x469EB9FB31c177d4BB3fEb1a9F882dF47F39bD04 ==> Sepolia
