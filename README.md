# Aktar Homebrew Tap

Homebrew cask for [Aktar](https://getaktar.com), a macOS menu bar app for
uploading files to your own S3-compatible storage, and a formula for its
command line tool.

## Install

```bash
brew install --cask getaktar/tap/aktar
```

Aktar updates itself through Sparkle, so the cask is marked `auto_updates`
and `brew upgrade` leaves it alone. Use `brew upgrade --greedy` to update it
through Homebrew anyway.

## Command line tool

```bash
brew install getaktar/tap/aktar-cli
```

Installs the `aktar` command ([getaktar/cli](https://github.com/getaktar/cli)),
which uploads files through the running app and prints their links:

```bash
aktar login
aktar upload screenshot.png
```

## Uninstall

```bash
brew uninstall --cask aktar
# also remove settings and upload history:
brew uninstall --zap --cask aktar
```

## Source

The app lives in [getaktar/mac](https://github.com/getaktar/mac), the command
line tool in [getaktar/cli](https://github.com/getaktar/cli). The `Bump cask`
workflow checks the app's appcast and the CLI's npm package every hour and
updates the cask and the formula when a new release appears. `scripts/update_cask.sh` in the app repo does the
same on demand.
