## Automated Semantic Versioning for Rust projects

[![Rust](https://github.com/mwnDK1402/semver-test/actions/workflows/rust.yml/badge.svg)](https://github.com/mwnDK1402/semver-test/actions/workflows/rust.yml)
[![Conventional Commits][conventional-commits-image]][conventional-commits-url]

Sample project demonstrating how to set up automated SemVer.

Features:
- Enforce compliance with Conventional Commits specification
- Verify that `cargo test` passes before committing
- Bump version before pushing



### Requirements
The Git hooks use cocogitto and cargo-bump, so they must be installed globally:
```sh
cargo install cocogitto
cargo install cargo-bump
```

### Note
When modifying husky hooks, the hooks should be updated when `cargo test` is run. But if no changes have been made, it will be skipped.

The solution to this is to delete the target/ directory, forcing `cargo test` to be run and updating the hooks. See [update-hooks.sh](update-hooks.sh).

[conventional-commits-image]: https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg
[conventional-commits-url]: https://conventionalcommits.org/