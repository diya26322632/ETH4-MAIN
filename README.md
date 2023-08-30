# Degen Gaming Avalanche Token

Welcome to the Degen Gaming Avalanche Token project! This is a Solidity smart contract for an ERC-20 token that has been deployed on the Avalanche network. The contract offers various features including minting new tokens, transferring tokens, redeeming tokens for in-game items, checking token balances, and burning tokens.

## Contract Details

- Token Name: Degen Gaming Token
- Token Symbol: DEGEN
- Network: Avalanche

## Features

### 1. Minting New Tokens

The contract owner possesses the authority to mint new DEGEN tokens. This can be achieved by invoking the `mint` function, providing the recipient's address and the intended token amount.

### 2. Transferring Tokens

Players have the capability to transfer their DEGEN tokens to other addresses by making use of the `transfer` function. They should specify the recipient's address and the amount of tokens they wish to transfer.

### 3. Redeeming Tokens

Players are entitled to redeem their DEGEN tokens in exchange for in-game items within the Degen Gaming ecosystem. This is accomplished by executing the `redeem` function while specifying the token amount. Additional logic to facilitate item redemption can be integrated into the contract.

### 4. Checking Token Balance

At any given time, players can ascertain their DEGEN token balance by calling the `balanceOf` function and providing their account address.

### 5. Burning Tokens

Individuals have the option to burn their DEGEN tokens if desired. This is done by triggering the `burn` function and indicating the quantity of tokens to be burned.

## Deployment and Verification

The Degen Gaming Avalanche Token contract has already been successfully deployed on the Avalanche network. If you wish to deploy it on your local environment for testing purposes, follow these steps:

1. Write the contract code using a tool like Remix IDE.
2. Configure a network account on MetaMask connected to the Avalanche network.
3. Ensure that your MetaMask account holds sufficient AVAX.
4. Set the Remix environment to "Injected Provider" and deploy the contract.
5. To verify the deployment, copy the contract address and use a service like "Snowtrace Fauji Testnet."
