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
alias gb='git branch -vv'
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gr='git remote -v'
alias gl='git log'

alias gck='git checkout'

alias gpl='git pull'
alias gph='git push'


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


alias ssh_138='ssh ld-shaocf@43.252.185.138'
alias ssh_132='ssh ld-shaocf@43.252.185.132'
alias ssh_132_tun='ssh 192.168.14.2' 
alias ssh_139='ssh ld-shaocf@43.252.185.139'
alias ssh_141='ssh ld-shaocf@43.252.185.141'
alias ssh_6='ssh ld-shaocf@203.116.124.6'
alias ssh_146='ssh ld-shaocf@43.252.185.146'

# alias for test servers
alias ssh_172='ssh ld-shaocf@203.117.155.172'
alias sftp_172='sftp ld-shaocf@203.117.155.172'

# alias for TH servers
alias ssh_th_51='ssh ld-shaocf@112.121.158.51'
alias ssh_th_52='ssh ld-shaocf@112.121.158.52'
alias ssh_th_17='ssh ld-shaocf@203.116.124.17'
alias ssh_th_18='ssh ld-shaocf@203.116.124.18'
alias ssh_th_38='ssh ld-shaocf@112.121.158.38'
alias ssh_th_23='ssh ld-shaocf@203.116.124.23'
alias ssh_th_61='ssh ld-shaocf@112.121.158.61'
alias ssh_th_138='ssh ld-shaocf@112.121.158.138'

# alias for PH server
alias ssh_ph_221='ssh 125.5.3.221'
