# JamesRyanATX Homebrew tap

```sh
brew trust --tap jamesryanatx/tap   # required by Homebrew 7+ for third-party taps
brew install JamesRyanATX/tap/fcbnerd
```

| Formula | |
|---|---|
| [fcbnerd](https://github.com/JamesRyanATX/fcbnerd) | Bind MIDI foot controller events to shell commands, or stream them as JSON |

## Releasing a new fcbnerd version

Don't edit `Formula/fcbnerd.rb` by hand. Pushing a `vX.Y.Z` tag to
[fcbnerd](https://github.com/JamesRyanATX/fcbnerd) runs its release workflow,
which publishes the binary and commits the new formula here (via the
"fcbnerd release workflow" deploy key). The [test workflow](.github/workflows/test.yml)
then installs and tests it.
