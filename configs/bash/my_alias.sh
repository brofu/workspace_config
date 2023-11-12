#!/usr/bin/env bash

CHANGFU_SHELL=$HOME/workspace/shell
CHANGFU_CONF=$CHANGFU_SHELL/myconf

# alias for reload .bashrc
alias rl='. ~/.bashrc && echo reload success!'

# alias for tmux
alias tx='tmux -2'
alias tx_load='bash $HOME/workspace/tools/tmux/.auto_load'

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

# alias for python with vitualenv
alias vpython='source $HOME/workspace/vp/bin/activate && python'
alias dpython='source $HOME/workspace/python_dev/bin/activate && python'

# alias for git_push
alias gitpush='$CHANGFU_SHELL/git_push.sh'

# alias for ssh
alias ssh142='$CHANGFU_SHELL/ssh_auto_login.sh maiziedu 192.168.1.142 1234 /var/www/code.maiziedu'
alias ssh16='$CHANGFU_SHELL/ssh_auto_login.sh root 192.168.1.16 1234 /var/www/code.maiziedufps'

# alias for google
alias chrome='google-chrome & 1>/dev/null 2>&1' 

# alias for subline text 3
alias subl='subl & 1>/dev/null 2>&1'

# alias for mysql-workbench
alias mysqlwb='mysql-workbench & 1>/dev/null 2>&1i'

# alias for pycharm
alias pycharm='/home/shaocf/tools/pycharm-community-2016.2.3/bin/pycharm.sh & 1>/dev/null 2>&1'

# alias for python virtualenv
alias vp='. $HOME/workspace/python_dev/bin/activate'

# alias for django 1.6
alias ven_16='. $HOME/workspace/venvs/django1.6/bin/activate'

# alias for garena dev
# alias for virtualenv of webclient dango 1.6

alias ven_backend='. $HOME/workspace/webclient_python_dev/bin/activate'
alias ven_payment='. $HOME/workspace/venvs/cyberpay_service_payment/bin/activate'
alias ven_db='. $HOME/workspace/venvs/cyberpay_service_dbworker/bin/activate'
alias ven_admin='. $HOME/workspace/venvs/vpay/bin/activate'
alias ven_logging='. $HOME/workspace/venvs/cyberpay_service_logging/bin/activate'
alias ven_integration='. $HOME/workspace/venvs/cyberpay_site_integration/bin/activate'

# CS servers
alias cs_test='ssh ld-shaocf@10.129.97.78'
alias cs_uat='ssh ld-shaocf@10.129.97.142'
alias cs_stage='ssh ld-shaocf@10.129.97.207'
alias cs_can='ssh ld-shaocf@10.70.8.165'
alias cs_live_tool_147='ssh ld-shaocf@10.70.15.147'
alias cs_live_153='ssh ld-shaocf@10.65.236.153'
alias cs_log='ssh ld-shaocf@log-collect.shopeemobile.com'

# Account servers
alias ac_live_67='ssh ld-shaocf@10.70.17.67'
alias ac_can='ssh ld-shaocf@10.70.9.240'
alias con_spex='ssh -vvvCNL /run/spex/spex.sock:/run/spex/spex.sock -o StreamLocalBindUnlink=yes 10.129.97.78 &'
#alias kill_spex="kill -9 `ps aux | grep ssh | grep spex | awk '{print $2}'`"

# common servers
alias com_144='ssh ld-shaocf@10.70.47.144'
alias com_145='ssh ld-shaocf@10.70.47.145'
alias com_146='ssh ld-shaocf@10.70.47.146'
alias kfk_145='ssh ld-shaocf@10.70.40.145'

alias wcs='cd $GOPATH/src/git.garena.com/shopee-server/coreserver'
alias wss='cd $GOPATH/src/git.garena.com/shopee/core-server'

alias smct='smc -e test services' 
alias smcu='smc -e uat services' 
alias smcs='smc -e staging services' 
alias smcl='smc -e live services' 

#alias vim='vim -u ~/.go_vimrc'
alias vg='ln -sf ~/workspace/config/mac/vim/.vimrc ~/.vimrc; vim'
alias vjs='ln -sf ~/workspace/config/mac/vim/.js_vimrc ~/.vimrc; vim'
alias vja='ln -sf ~/workspace/config/mac/vim/.ja_vimrc ~/.vimrc; vim'
alias vp='ln -sf ~/workspace/config/mac/vim/.py_vimrc ~/.vimrc; vim'
alias vl='ln -sf ~/workspace/config/mac/vim/.lua_vimrc ~/.vimrc; vim'

#alias for gitbook
alias gbookb='gitbook build . built/_book'
alias gbooks='gitbook serve'


#seller-gateway code
alias sgw='cd /Users/shaocf/workspace/go/src/git.garena.com/shopee/seller-server/gateway/seller_gateway'
