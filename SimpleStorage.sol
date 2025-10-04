// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.8.30 <0.9; // stating our Solidity version

contract SimpleStorage {
    // Basic variable types: bool, uint, int, address, bytes
    // All variables get a default value if not initialized

    // bool isCatCute = true;

    // max is uint256 (256-bit)
    // using uint defaults to uint256
    // int256 is just this but signed instead of unsigned
    // variable was internal by default, setting to public to see its value
    uint256 public catAge = 3;

    // string catName = "Millie";

    // address donationAddress = 0x4D918c44815680e10A04fa5FE5D232F4C6e01Ab8;

    // strings are secretly just byte objects specifically for text!
    bytes32 catGamerTag = "xxMillieTheGreatxx";

    function kittyIsNow(uint256 _newCatAge) public {
        catAge = _newCatAge;
    }

    // view - just read state from the blockchain, no modification allowed
    function getKittyName() public view returns(bytes32) {
        return catGamerTag;
    }

    // pure - one step above view, cannot even read from the blockchain
    function answerToLife() public pure returns (uint256) {
        return 42;
    }

    // calling a view/pure function only costs gas when a gas-cost transaction calls it
    // eg. calling answerToLife() in kittyIsNow() would incur a gas cost
}