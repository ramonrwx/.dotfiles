# .dotfiles
> my dotfiles for termux app

## termux packages

```console
pkg install -y atuin binutils build-essential curl direnv \
    fd git gnupg golang iconv \
    jq luarocks lazygit lsd neovim \
    nodejs openssh openssl openssl-tool python \
    ripgrep ruby rust sqlite stylua \
    zsh
```

## python packages

```console
python -m pip install --user \
    httpie \
    pre-commit \
    requests \
    virtualenv
```
## oh-my-zsh

```console
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## luarocks packages

```console
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
