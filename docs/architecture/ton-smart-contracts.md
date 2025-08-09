---
description: >-
  The XDAO TON protocol is built on a modular architecture of smart contracts
  deployed on the TON blockchain.
---

# TON Smart Contracts

Each DAO on XDAO TON consists of several core smart contracts:

* **The DAO Root Contract** is the main entry point and controller for each DAO.
* **Member Wallets** are individual smart contracts associated with DAO participants.
* **Proposal Contract** manages voting processes and consensus.
* **Treasury Contract** handles the DAO’s assets and transaction logic.
* **Token Contract** defines internal tokens for governance or fundraising.

All contracts interact via TON’s native message-passing mechanism, enabling asynchronous and low-cost operations without centralized servers.

## DAO Root Contract

The Root Contract is deployed when a new DAO is created. It stores the DAO’s metadata (name, description, social links) and holds references to all active components, including: _the list of General Partners_, _consensus parameters_, _Treasury_ and _Proposal contracts_, _DAO configuration settings._

## Member Wallet Contracts

Every DAO participant interacts with the protocol through a dedicated wallet contract. These wallets are fully custodial by the user (linked to their TON address), responsible for submitting proposals and votes, able to receive governance tokens or rewards.

This design ensures users retain full ownership and control over their actions inside the DAO.

## Proposal Contract

All governance activity—like adding/removing members, fund allocation, or changing DAO rules—goes through the Proposal Contract.

**Key features:**

* Support for multiple action types
* Voting by predefined consensus (e.g., majority or supermajority)
* Automatic execution after passing thresholds

This contract is immutable after deployment, making all DAO governance cryptographically secure and tamper-proof.

## Treasury Contract

The Treasury Contract handles all DAO funds. It can:

1. Accept and store TON or Jettons
2. Transfer funds on proposal approval
3. Track historical transactions

Only successful proposals can trigger fund movements, preventing misuse or unauthorized access.
