# MoniVol Homebrew tap

Install [MoniVol](https://github.com/Geliv/MoniVol) from its GitHub Release:

```bash
brew install --cask Geliv/tap/monivol
```

Launch MoniVol and follow its first-run guide to install the audio driver. The app is not notarized by Apple; if macOS blocks the first launch, open System Settings → Privacy & Security and choose Open Anyway.

Before uninstalling, select **Uninstall Driver** in MoniVol's menu, then run:

```bash
brew uninstall --cask Geliv/tap/monivol
```

Full installation instructions are in the [MoniVol README](https://github.com/Geliv/MoniVol#readme).
