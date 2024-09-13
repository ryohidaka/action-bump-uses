# action-bump-uses

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-bump-uses)](https://github.com/ryohidaka/action-bump-uses/releases/)
[![Test Action](https://github.com/ryohidaka/action-bump-uses/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-bump-uses/actions/workflows/test.yml)

GitHub Actions to update the version of the `uses` documented in the README.

## Usage

```yml
- uses: ryohidaka/action-bump-uses@v1
```

## Inputs

| Input               | Description                                         | Default                      |
| ------------------- | --------------------------------------------------- | ---------------------------- |
| `commit-user-name`  | Commit username.                                    | `GitHub Actions`             |
| `commit-user-email` | Commit email.                                       | `actions@github.com`         |
| `commit-message`    | Commit message.                                     | `chore: Format ShellScripts` |
| `dry-run`           | If true, the commit and push steps will be skipped. | `false`                      |
