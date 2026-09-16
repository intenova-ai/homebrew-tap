# intenova-ai/homebrew-tap

Homebrew formulae for Intenova's [Nova X](https://app.intenova.ai) tools.

```bash
brew tap intenova-ai/tap
brew install nova-x
brew upgrade nova-x
```

Or in one step: `brew install intenova-ai/tap/nova-x`.

| Formula | What it installs | Source of the binaries |
|---|---|---|
| `nova-x` | the Nova X CLI — every platform tool from the terminal | [intenova-ai/nova-x-releases](https://github.com/intenova-ai/nova-x-releases) `cli-vX.Y.Z` |

`Formula/nova-x.rb` is a binary formula: Homebrew downloads the executable for
your OS and CPU (macOS arm64/Intel, Linux x86_64/arm64) straight from the
release and verifies it against the sha256 baked into the formula. The
formula is **rendered and pushed by CI** (the `intenova-release-bot` GitHub
App, from the nova-x CLI's Release workflow) on every CLI release — do not
edit it by hand; it is overwritten on the next release.

The binaries are currently unsigned. Homebrew's download sets no macOS
quarantine flag, so `brew install` runs them without a Gatekeeper prompt; the
formula's sha256 is the integrity check. Getting started after install:
`nova-x --version`, then see the install guide linked from the release.

Support: <support@intenova.ai> · Security: <security@intenova.ai>

Copyright (c) 2026 Intenova AI, Inc. The formula files in this tap may be
freely used to install the software; the software itself is proprietary and
distributed to Intenova customers under their agreement.
