#!/usr/bin/env bash

# config root
CONFIG_ROOT="$HOME/workspace/wpconfig"

# alias for reload .bashrc
alias rl='. ~/.bashrc && echo reload success!'

# alias for tmux
alias tx='tmux -2'
alias tx_load='bash $CONFIG_ROOT/tmux/.auto_load'

# alias for git
alias gs='git status'
alias gb='git branch'
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gr='git remote -v'
alias gl='git log'
alias gco='git checkout'
alias gpl='git pull'
alias gph='git push'
alias gcf='git config'

#alias vim='vim -u ~/.go_vimrc'
alias vg='ln -sf $CONFIG_ROOT/vim/.vimrc ~/.vimrc; nvim'
alias vjs='ln -sf $CONFIG_ROOT/vim/.js_vimrc ~/.vimrc; nvim'
alias vja='ln -sf $CONFIG_ROOT/vim/.ja_vimrc ~/.vimrc; nvim'
alias vp='ln -sf $CONFIG_ROOT/vim/.py_vimrc ~/.vimrc; nvim'
alias vl='ln -sf $CONFIG_ROOT/vim/.lua_vimrc ~/.vimrc; nvim'

#alias for gitbook
alias gbookb='gitbook build . built/_book'
alias gbooks='gitbook serve'

