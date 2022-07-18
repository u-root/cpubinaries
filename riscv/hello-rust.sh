#!/bin/sh

./cpu -namespace /home -key ../uefi/cpu_rsa -timeout9p 1s -sp 42 localhost \
./hello-linux-rv64-rs/target/riscv64gc-unknown-linux-gnu/release/hello-rust
