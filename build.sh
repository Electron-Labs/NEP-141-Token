#!/bin/bash
RUSTFLAGS='-C link-arg=-s' cargo build --target wasm32-unknown-unknown --release
if [ ! -d "out" ]; then
    mkdir -p "out"
fi
cp target/wasm32-unknown-unknown/release/electronTestToken.wasm ./out/main.wasm