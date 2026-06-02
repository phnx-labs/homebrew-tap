# Phoenix Labs Homebrew tap

Homebrew tap for Phoenix Labs OSS.

## Install

```sh
brew install phnx-labs/tap/agents
```

Or tap once and install by short name:

```sh
brew tap phnx-labs/tap
brew install agents
```

## Formulae

| Formula | Description |
|---|---|
| [`agents`](Formula/agents.rb) | One CLI for every coding agent — Claude Code, Codex, Gemini, Cursor, and more. See [agents-cli.sh](https://agents-cli.sh). |

## Updating formulae

Each formula pins to a specific upstream version. To bump:

1. Pull the new tarball URL and `sha256` from the upstream registry (npm for Node packages, GitHub releases for others).
2. Edit `Formula/<name>.rb`, update `url` + `sha256`.
3. Open a PR; CI will run `brew test-bot` to verify the formula builds and tests pass on macOS.

## License

MIT — see [LICENSE](LICENSE).
