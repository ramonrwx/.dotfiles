export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HIST_STAMPS="dm/dd/yyyy"

plugins=(git z colored-man-pages)

# GPG
export KEYFP=""
export GPG_TTY=$TTY
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

source $ZSH/oh-my-zsh.sh

# ALIAS
alias ls="ls --color=auto --group-directories-first"
alias lg="lazygit"
alias -g G="| grep"

# histdb
source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook

source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/histdb-interactive.zsh
bindkey '^r' _histdb-isearch

export GOPATH=$HOME/.go
export PATH="$HOME/.luarocks/bin:$GOPATH/bin:$PATH"
