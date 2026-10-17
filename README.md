<p align="center">
  <strong>cobanov/tap</strong><br>
  Homebrew casks and formulae for the macOS apps in this account.
</p>

<p align="center">
  <img alt="casks" src="https://img.shields.io/badge/casks-3-f0a33c?labelColor=1a1a1a">
  <img alt="platform" src="https://img.shields.io/badge/macOS-Ventura%2B-f0a33c?labelColor=1a1a1a">
  <img alt="zap" src="https://img.shields.io/badge/zap%20stanza-on%20all%20three-f0a33c?labelColor=1a1a1a">
</p>

---

Three small menu bar and desktop apps, none of them large enough or widely used
enough to belong in homebrew-core. A tap is the cheapest way to make
`brew upgrade` work for them anyway, so an app installed once keeps up with its
releases without anyone going back to a download page.

```sh
brew tap cobanov/tap
```

Or skip the tap and name it in full, which taps it implicitly:

```sh
brew install --cask cobanov/tap/ghbar
```

## What is in here

| Cask | What it is | macOS |
|---|---|---|
| [`ghbar`](https://ghbar.cobanov.dev) | Pull requests and issues from your repositories, in the menu bar | Sonoma or newer |
| [`bartainer`](https://github.com/cobanov/homebrew-tap) | Local and remote Docker containers, in the menu bar | Ventura or newer |
| [`autocut`](https://github.com/cobanov/autocut) | Drop a video in, the silences come out | Sonoma or newer, Apple silicon |

```sh
brew install --cask cobanov/tap/ghbar
brew install --cask cobanov/tap/bartainer
brew install --cask cobanov/tap/autocut
```

One formula, for a command-line agent rather than an app:

| Formula | What it is | macOS |
|---|---|---|
| [`kota`](https://github.com/cobanov/kota) | Background agent that pushes your Claude plan usage to a Flipper Zero over Bluetooth | Ventura or newer |

```sh
brew install cobanov/tap/kota
brew services start kota
```

`autocut` is `depends_on arch: :arm64`. It ships a VAD model and is not built for
Intel.

Installing through the tap is the easier path for a second reason: Homebrew clears
the Gatekeeper quarantine flag as part of the install. `autocut` is not notarised, so
a `.dmg` dragged in by hand needs `xattr -cr /Applications/autocut.app` before macOS
will open it at all. Through `brew install --cask` that step is already done.

Every cask carries a `zap` stanza, so `brew uninstall --zap` takes the preferences,
caches and application support directories with it rather than leaving them behind.

## Where the binaries come from

`ghbar` and `autocut` download from their own repositories' releases, which is the
ordinary arrangement.

`bartainer` is the exception: its source is not public, so the build is attached to a
release on this repository instead. That makes the download host and the cask's
`homepage` disagree, which Homebrew treats as suspicious by default, so the cask
carries an explicit `verified:` line naming the host it is allowed to fetch from.

## Updating a cask

Bump `version`, replace `sha256`, and check the URL still resolves:

```sh
shasum -a 256 <the downloaded file>
brew audit --cask --online cobanov/tap/<name>
brew install --cask --force cobanov/tap/<name>
```

`brew audit --online` is the one that catches a dead URL or a checksum that no longer
matches, which is otherwise only discovered by whoever runs `brew upgrade` next.
