# .dotfiles
> My dotfiles for termux app

## Termux packages

```bash
pkg install -y binutils build-essential curl fd git \
    gnupg golang iconv jq lazygit \
    neovim nodejs openssh python ripgrep \
    ruby sqlite zsh
```

## Python packages

```bash
python -m pip install dotbot
```

### Problems

When trying to install pre-commit-hooks there is a [bug](https://github.com/termux/termux-packages/issues/16746)
in the ruamel.yaml.clib library in which it cannot
compile.

You can omit the compilation failure by setting
`-Wno-incompatible-function-pointer-types` in CFLAGS

```bash
export CFLAGS="-Wno-incompatible-function-pointer-types"
python -m pip install ruamel.yaml.clib
```
