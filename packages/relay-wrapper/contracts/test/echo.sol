/// SPDX-License-Identifier: Apache-2.0
/// @title Echo Testing Contract for Batch Calling
/// @version 0.1.0

pragma solidity >=0.7.0;

contract Echo {
    
    event Echoed(bytes32 indexed msg);

    mapping(bytes32=>bool) public publicMapping;

    function setMapping(bytes32 key) public {
        emit Echoed(key);
        publicMapping[key] = true;
    }

    function echo(string memory data) public pure returns (string memory) {
        return data;
    }
}
