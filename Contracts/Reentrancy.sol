// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReentrancyGuard {
    bool internal locked;

    modifier noReentrancy() {
        require(!locked, "ReentrancyGuard: reentrant call");
        locked = true;
        _;
        locked = false;
    }
}

contract SecureWithdrawal is ReentrancyGuard {
    mapping(address => uint) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint _amount) external noReentrancy {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
}
