# .dotfiles
> My dotfiles for termux app

## Termux packages

```bash
pkg install -y binutils aichat atuin build-essential curl \
    direnv fd git gnupg golang \
    iconv jq luarocks lazygit lsd \
    neovim nodejs openssh python ripgrep \
    ruby rust sqlite stylua zsh
```

## Python packages

```bash
python -m pip install --user \
    httpie \
    pre-commit \
    virtualenv
```

## Luarocks packages

```bash
luarocks install luacheck
```

### Problems

#### Python

When trying to install pre-commit-hooks there is a [bug](https://github.com/termux/termux-packages/issues/16746)
in the ruamel.yaml.clib library in which it cannot
compile.

You can omit the compilation failure by setting
`-Wno-incompatible-function-pointer-types` in CFLAGS

```bash
export CFLAGS="-Wno-incompatible-function-pointer-types"
python -m pip install ruamel.yaml.clib
```

#### Node
[Error: EACCES: permission denied](https://stackoverflow.com/a/49714908)

- Make a directory for global installations:
```bash
mkdir ~/.npm-global
```
- Configure npm to use the new directory path:
```bash
npm config set prefix ~/.npm-global
```
- Open or create a ~/.profile file and add this line:
```bash
export PATH=~/.npm-global/bin:$PATH
```
- Back on the command line, update your system variables:
```bash
exec zsh
```
