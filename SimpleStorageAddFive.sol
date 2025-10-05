// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.8.30 <0.9; // stating our Solidity version

// Inheritance demo

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleStorageAddFive is SimpleStorage {
    // adding new functions
    function sayHello() public pure returns(string memory) {
        return "hello!";
    }

    // overriding existing functions - override keyword
    function kittyIsNow(uint256 _newCatAge) public override {
        aCatAge = _newCatAge + 5;
    }
}