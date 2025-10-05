// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.8.30 <0.9;

// don't prefer this - it imports all contracts from 1 file
// import "./SimpleStorage.sol";

// prefer this
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorages;

    function createSimpleStorageContract() public {
        simpleStorages.push(new SimpleStorage());
    }

}