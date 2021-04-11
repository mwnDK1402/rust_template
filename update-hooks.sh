#!/bin/sh
# Force husky hooks to update

rm -R "$(realpath $0 | xargs dirname)/target/"
cargo test