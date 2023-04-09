// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Whitelist {

    uint256 maxWhitelistedAddresses;

    mapping (address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require (!whitelistedAddresses[msg.sender], "Sender is already whitelisted!");
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "More addresses cannot be added!");

        whitelistedAddresses[msg.sender] = true;

        numAddressesWhitelisted++;
    }


}