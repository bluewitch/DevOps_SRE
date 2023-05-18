#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install curl
sudo apt-get install -y curl

# Install Rust and Cargo (Rust's package manager)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Install git
sudo apt-get install -y git

# Clone Substrate's codebase
git clone https://github.com/paritytech/substrate.git
cd substrate

# Install required tools and dependencies
./scripts/init.sh

# Build all native code
cargo build --release

# Install Node.js and npm for running scripts and tests
sudo apt-get install -y nodejs npm

# Install other potential dependencies
sudo apt-get install -y cmake pkg-config libssl-dev git clang libclang-dev

# Install wasm compiler for Rust
rustup target add wasm32-unknown-unknown

# Install other useful tools
cargo install cargo-contract
cargo install canvas-node --git https://github.com/paritytech/canvas-node.git --tag v0.1.6 --force --locked

# For testing frameworks and JavaScript work
sudo apt-get install -y mocha
sudo apt-get install -y polkadot-js

# Install Solidity for smart contract development
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install solc

echo "Setup Complete"
