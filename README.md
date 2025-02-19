# aws-vault-wsl

Wraps `aws-vault` to make it possible to use the `wincred` secret backend from WSL, so that the credentials are stored in the Windows Credential Manager.

* Passes `aws-vault` invocations to `aws-vault.exe`
* Wraps the command string passed to `aws-vault exec` to re-enter WSL with the `AWS_*` environment variables set

## Prerequisites

* `aws-vault` installed on Windows (e.g. `scoop install aws-vault`)

## Installation

Install into a Nix profile:

```
$ nix profile install github:jkxyz/aws-vault-wsl
```

Or manually:

```
$ git checkout https://github.com/jkxyz/aws-vault-wsl
$ cd aws-vault-wsl
$ sudo install aws-vault /usr/local/bin/
```
