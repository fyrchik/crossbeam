#!/bin/bash

cd "$(dirname "$0")"/../crossbeam-deque
set -ex

if [[ "$TRAVIS_RUST_VERSION" != "nightly" ]]; then
    export RUSTFLAGS="-D warnings"
fi

cargo check --bins --examples --tests
cargo test
