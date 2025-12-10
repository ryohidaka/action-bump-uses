# Bump Uses

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-bump-uses)](https://github.com/ryohidaka/action-bump-uses/releases/)
[![Test Action](https://github.com/ryohidaka/action-bump-uses/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-bump-uses/actions/workflows/test.yml)

GitHub Actions to update the version of the `uses` documented in the README.

## Usage

```yml
on: [push]

permissions:
  contents: write

jobs:
  bump-uses:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-bump-uses@v0.4.0
        with:
          commit-user-name: "github-actions[bot]"
          commit-user-email: "41898282+github-actions[bot]@users.noreply.github.com"
          commit-message: "chore: Bump uses"
          dry-run: false
```

## Inputs

| Input               | Description                                         | Default                                                 |
| ------------------- | --------------------------------------------------- | ------------------------------------------------------- |
| `commit-user-name`  | Commit username.                                    | `github-actions[bot]`                                   |
| `commit-user-email` | Commit email.                                       | `41898282+github-actions[bot]@users.noreply.github.com` |
| `commit-message`    | Commit message.                                     | `chore: Bump uses`                                      |
| `dry-run`           | If true, the commit and push steps will be skipped. | `false`                                                 |
