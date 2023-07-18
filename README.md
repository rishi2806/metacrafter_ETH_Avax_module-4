# Building-on-Avalanche-ETH+AVAX
This contract represents a ERC-20 token called `DegenGamingToken` having the symbol `DGT`. It uses the OpenZeppelin ERC20 implementation. This contract have some functions which allows the users to  mint new tokens, burn existing tokens, redeem items , transfer tokens and check balance.

## Prerequisites
 1- `Remix IDE`: It is an integrated development environment for Ethereum smart contracts. You can make your smart contracts here.
 
 2- `Metamask`: Metamask is an extension on browser which is used to interact with Ethereum based apps. You have to make an account on it to access it.

## Functionality
 1- `mint`: This function allows the user to mint new tokens and add them to a particular address. It has two parameters: "to" (address for receiving new tokens) and "amount" (number of tokens to 
            create). This function uses the "onlyowner" modifier due to this it can be accessed only by the owner.
            
 2- `burn`: This function allows users to burn tokens. This function can be accessed by anyone.
 
 3- `redeemTokens`: This function allows users to destroy tokens. This can effectively reduces their token balance. Once the tokens are burned, it cannot be recovered.
 
 4- `transferTokens`: This function allows users to transfer tokens to recipient's address. 
 
 5- `checkBalance`: This function allows users to check number of tokens for a particular address.

 
