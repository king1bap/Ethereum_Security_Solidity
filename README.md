## Ethereum Smart Contract Security Patterns

This repository provides examples of common security patterns for writing secure smart contracts on Ethereum. These patterns help developers avoid vulnerabilities like reentrancy, unauthorized access, integer overflow, and underflow.

## Contracts

- **Reentrancy.sol**: Protects against reentrancy attacks using a `noReentrancy` modifier.
- **AccessControl.sol**: Implements an access control mechanism to restrict function access to admins.
- **Ownable.sol**: Provides a basic ownership model, allowing only the owner to perform sensitive actions.
- **SafeMath.sol**: Library for safe mathematical operations to prevent overflows and underflows.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/king1bap/ethereum-security-solidity.git
   cd eth-security-solidity
