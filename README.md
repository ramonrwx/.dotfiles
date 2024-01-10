# .dotfiles
> My dotfiles for termux app

## termux packages

```bash
pkg install -y aichat atuin binutils build-essential curl \
    direnv fd git gnupg golang \
    iconv jq luarocks lazygit lsd \
    neovim nodejs openssh python ripgrep \
    ruby rust sqlite stylua zsh
```

## python packages

```bash
python -m pip install --user \
    httpie \
    pre-commit \
    requests \
    virtualenv
```

## luarocks packages

```bash
luarocks install luacheck
```

## install this repo

```console
git clone --recurse-submodules https://github.com/ramonrwx/.dotfiles
```

```console
cd .dotfiles
./install
```

## known issues
see [wiki](https://github.com/ramonrwx/.dotfiles/wiki/known-issues) for more details.
