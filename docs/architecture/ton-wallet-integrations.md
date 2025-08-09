# TON Wallet Integrations

TON Wallet integration is a crucial part of the Telegram-native DAO ecosystem. It enables users to authenticate, sign transactions, and interact with smart contracts directly inside the Telegram Mini App using their TON-based wallets.

We support seamless interaction with several TON wallets that are compatible with the Telegram ecosystem and provide developer-friendly APIs.

**Supported Wallets**

<figure><img src="/xdao-books/assets/images/integrations.jpg" alt="Integrations"></figure>

We aim to provide a frictionless experience for users of these wallets, supporting features like:

* Connect Wallet
* Sign Message
* Send Transaction
* Check Wallet Address Ownership
* View On-chain Balance

## Integration Flow

1. **Connect Wallet.** User is prompted to connect their TON wallet. The app detects available providers automatically or uses Wallet Connect for fallback.
2. **Signature request.** Upon login or transaction initiation, the app generates a message that the wallet must sign.
3. **Wallet Verification.** The backend verifies the message signature using the public address to authenticate the user.
4. **Transaction Execution.** Transactions (e.g., vote proposals, fund transfers) are prepared and signed within the wallet interface and then broadcast to the TON blockchain.
