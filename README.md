# Ockam homebrew package for Ockam Command

## Usage

```
brew tap build-trust/ockam
```
This will download and install Brew Formula for Ockam Command.
`brew tap <user/repo>` makes a clone of the repository at `https://github.com/<user>/homebrew-<repo>`.
More info can be found [here](https://docs.brew.sh/Taps#the-brew-tap-command).


```
brew install ockam
```
This will install appropriate package version.


## For developers
When releasing new version first we need to create new GitHub release first (in `build-trust/ockam` repo) and then update `ockam.rb` from this repo.

On new command release in `build-trust/ockam` all packages needs to be uploaded to this release as `.tar.gz` files.

The folder structure needs to be as follow:
```
ockam
└── <VERSION>
    └── bin
        └── ockam
```

E.g. if we releasing version v0.56.0 then we would have this structure. Make ockam command executable before creating `.tar.gz`.
```
ockam
└── 0.56.0
    └── bin
        └── ockam
```

E.g. for version 0.56.0 files will look like this:
```
ockam-0.56.0.big_sur.bottle.tar.gz
ockam-0.56.0.mojave.bottle.tar.gz
ockam-0.56.0.high_sierra.bottle.tar.gz
ockam-0.56.0.catalina.bottle.tar.gz
ockam-0.56.0.monterey.bottle.tar.gz
ockam-0.56.0.arm64_big_sur.bottle.tar.gz
ockam-0.56.0.arm64_monterey.bottle.tar.gz
ockam-0.56.0.x86_64_linux.bottle.tar.gz
```

However we will have only 3 checksum

`ockam.x86_64-unknown-linux-gnu` will apply to linux versioin

`ockam.aarch64-apple-darwin` will apply to all mac arm versions (bit sur and monterey)

`ockam.x86_64-apple-darwin` will apply to rest x86 mac versions

In `ockam.rb` update checksums of each `.tar.gz` file in `bottle do` section.

We should end up with only 3 checksums
1. One for `big_sur mojave high_sierra catalina monterey`
1. One for `arm64_big_sur arm64_monterey`
1. And one for `x86_64_linux`

After that update `root_url` as well.

Commit and push. That should be it.

> NOTE: If you have already tap resource you need to update it executing `brew tap build-trust/ockam` again.
