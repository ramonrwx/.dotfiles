# Zsh settings
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="vi"

export GPG_TTY=$TTY
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export GOPATH=$HOME/.go
export PATH="$GOPATH/bin:$HOME/.local/bin:$PATH"

ZSH_THEME="lambda-gitster"
HIST_STAMPS="dm/dd/yyyy"

plugins=(
  cp colored-man-pages command-not-found
  jsontools z
)
source $ZSH/oh-my-zsh.sh

# User settings

# aliases
alias cp="nocorrect cp -v"
alias mv="nocorrect mv -v"
alias mkdir="nocorrect mkdir"
alias rm="rm -I"

alias ls="lsd"
alias la="ls -a"
alias lg="lazygit"
alias ll="ls -l"
alias lla="ls -la"
alias tree="ls --tree --icon never"

# global aliases
alias -g G="| grep"
alias -g A="| awk"
alias -g G="| grep"
alias -g GV="| grep -v"
alias -g H="| head"
alias -g W="| wc"
alias -g Z="| fzf"

# suffix aliases
alias -s cjs=vi
alias -s go=vi
alias -s js=vi
alias -s lua=vi

# histdb
source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh

source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/histdb-interactive.zsh
bindkey "^r" _histdb-isearch

# direnv
eval "$(direnv hook zsh)"

autoload -U bashcompinit
bashcompinit
