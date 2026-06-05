# homebrew-tap

Homebrew tap for [@hudsonbrendon](https://github.com/hudsonbrendon)'s apps.

## MiSTer Companion

Cross-platform desktop companion for MiSTer FPGA — [repo](https://github.com/hudsonbrendon/mister-companion).

```bash
brew install --cask hudsonbrendon/tap/mister-companion
```

Homebrew removes the macOS download quarantine on install, so the app opens **without
the Gatekeeper "could not verify" prompt** — no paid Apple notarization required.
Apple Silicon (arm64) only.

To update later:

```bash
brew upgrade --cask mister-companion
```

The cask is bumped automatically by a daily GitHub Action whenever a new
`mister-companion` release is published.
