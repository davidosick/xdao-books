---
description: >-
  Imagine a decentralized organization living right inside your favorite
  messenger. No dApps. No browser extensions. Just Telegram.
---

# General Concept

## Overview

The architecture of XDAO TON is designed to bring the full power of Digital Autonomous Organizations (DAOs) into the everyday flow of Telegram communication. This is not just a wrapper around web3 — it’s a native experience built for TON and Telegram users, with minimal friction and maximum accessibility.

## Key Principles

!!! note "1. Telegram-First"
    All core interactions happen inside a Telegram Mini App, offering a seamless UX for creating and managing a DAO directly in app.

!!! note "2. TON Native"
    The backend operates on the TON blockchain, using native smart contracts for asset management, voting, and consensus.

!!! note "3. Modular Micro-Architecture"
    Every feature — from treasury to proposals — is modular and replaceable. This allows different types of DAOs (startups, communities, investment clubs) to be built on the same foundation.

!!! note "4. Secure by Design"
    Wallets are non-custodial, private keys are never exposed, and transactions are signed by the user.

## High-Level Components

* [Telegram Mini App](telegram-mini-app.md)&#x20;
* [TON Smart Contracts](ton-smart-contracts.md)
* [TON Wallet Integration](ton-wallet-integrations.md)

## Lifecycle of a DAO Action

<img src="../.gitbook/assets/file.excalidraw.svg" alt="" class="gitbook-drawing">

**Initiation.** A DAO member creates a proposal inside the Telegram interface.

**Validation.** The backend (our systems) checks permissions, renders a preview, and suggests actions.

**Signature.** Members sign the proposal using their TON wallets.

**Execution.** Upon reaching consensus, the action is executed on-chain via smart contract call.
