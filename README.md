## Automated Semantic Versioning for Rust projects

[![Rust][rust-test-image]][rust-test-url]
[![Conventional Commits][conventional-commits-image]][conventional-commits-url]

Rust template repository with commit message verification and changelog, version, and test automation.

### Features:
- Enforce compliance with Conventional Commits specification
- Verify that `cargo test` passes before committing
- Bump version before pushing
- Initialization script for easy template setup

### Requirements
The Git hooks use cocogitto and cargo-bump, so they must be installed globally:
```sh
cargo install cocogitto
cargo install cargo-bump
```

### Usage
- [Generate](https://github.com/mwnDK1402/rust-template/generate) new repository from template
- Clone and enter new repository
- Run [initialize-template.sh](initialize-template.sh)
- Input package name and authors

### Notes
When modifying husky hooks, the hooks should be updated when `cargo test` is run. But if no changes have been made, it will be skipped.

The solution to this is to delete the target/ directory, forcing `cargo test` to be run and updating the hooks. See [update-hooks.sh](update-hooks.sh).

[rust-test-image]: https://github.com/mwnDK1402/semver-test/actions/workflows/rust.yml/badge.svg
[rust-test-url]: https://github.com/mwnDK1402/semver-test/actions/workflows/rust.yml
[conventional-commits-image]: https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg
[conventional-commits-url]: https://conventionalcommits.org/