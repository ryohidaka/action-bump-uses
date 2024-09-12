# action-bump-uses

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-bump-uses)](https://github.com/ryohidaka/action-bump-uses/releases/)
[![Test Action](https://github.com/ryohidaka/action-bump-uses/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-bump-uses/actions/workflows/test.yml)

GitHub Actions to update the version of the `uses` documented in the README.

## Usage

```yml
- uses: ryohidaka/action-bump-uses@v1
  with:
    who-to-greet: "Mona the Octocat"
- run: echo random-number "$RANDOM_NUMBER"
  shell: bash
  env:
    RANDOM_NUMBER: ${{ steps.foo.outputs.random-number }}
```

## Inputs

| Input          | Required | Description  | Default | Example |
| -------------- | -------- | ------------ | ------- | ------- |
| `who-to-greet` | ✔        | Who to greet | `World` | `World` |
| ``             | ❌       |              | ``      | ``      |

## Outputs

| Output          | Description   | Example |
| --------------- | ------------- | ------- |
| `random-number` | Random number | `9999`  |
