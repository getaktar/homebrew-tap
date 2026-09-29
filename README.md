# Aktar Homebrew Tap

Homebrew cask for [Aktar](https://getaktar.com), a macOS menu bar app for
uploading files to your own S3-compatible storage.

## Install

```bash
brew install --cask getaktar/tap/aktar
```

Aktar updates itself through Sparkle, so the cask is marked `auto_updates`
and `brew upgrade` leaves it alone. Use `brew upgrade --greedy` to update it
through Homebrew anyway.

## Uninstall

```bash
brew uninstall --cask aktar
# also remove settings and upload history:
brew uninstall --zap --cask aktar
```

## Source

The app lives in [getaktar/mac](https://github.com/getaktar/mac). The cask is
bumped by `scripts/update_cask.sh` there after each release.
