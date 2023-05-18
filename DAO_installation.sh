#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install curl
sudo apt-get install -y curl

# Install git
sudo apt-get install -y git

# Install Rust and Cargo (Rust's package manager)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Install required dependencies for Substrate
sudo apt-get install -y cmake pkg-config libssl-dev git clang libclang-dev

# Install wasm compiler for Rust
rustup target add wasm32-unknown-unknown

# Install other useful tools for Substrate development
cargo install cargo-contract
cargo install canvas-node --git https://github.com/paritytech/canvas-node.git --tag v0.1.6 --force --locked

# Install Node.js and npm for running scripts and tests
sudo apt-get install -y nodejs npm

# Install Truffle for smart contract development and testing
sudo npm install -g truffle

# Install Web3.js for interacting with Ethereum
sudo npm install web3

# Install IPFS
wget https://dist.ipfs.io/go-ipfs/v0.9.1/go-ipfs_v0.9.1_linux-amd64.tar.gz
tar xvfz go-ipfs_v0.9.1_linux-amd64.tar.gz
sudo mv go-ipfs/ipfs /usr/local/bin/ipfs

# Cleanup
rm -rf go-ipfs go-ipfs_v0.9.1_linux-amd64.tar.gz

echo "Setup Complete"
