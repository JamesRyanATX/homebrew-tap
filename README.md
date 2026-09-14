# JamesRyanATX Homebrew tap

```sh
brew install JamesRyanATX/tap/fcbnerd
```

| Formula | |
|---|---|
| [fcbnerd](https://github.com/JamesRyanATX/fcbnerd) | Bind MIDI foot controller events to shell commands, or stream them as JSON |

## Releasing a new fcbnerd version

1. In fcbnerd, bump `version` in `Sources/fcbnerd/main.swift`, commit, then
   `git tag -a vX.Y.Z -m "fcbnerd X.Y.Z" && git push origin vX.Y.Z`.
2. Here, update `url` and `sha256` in `Formula/fcbnerd.rb`:
   ```sh
   curl -sL https://github.com/JamesRyanATX/fcbnerd/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```
3. Check and push:
   ```sh
   brew audit --strict --online JamesRyanATX/tap/fcbnerd
   brew reinstall --build-from-source JamesRyanATX/tap/fcbnerd && brew test fcbnerd
   ```
