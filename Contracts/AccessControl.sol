// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessControl {
    mapping(address => bool) private admins;

    modifier onlyAdmin() {
        require(admins[msg.sender], "AccessControl: not an admin");
        _;
    }

    function addAdmin(address _admin) external onlyAdmin {
        admins[_admin] = true;
    }

    function removeAdmin(address _admin) external onlyAdmin {
        admins[_admin] = false;
    }
}
