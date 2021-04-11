## Automated Semantic Versioning for Rust projects

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

[conventional-commits-image]: https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg
[conventional-commits-url]: https://conventionalcommits.org/