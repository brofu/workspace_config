#!/usr/bin/env bash

CHANGFU_SHELL=$HOME/workspace/shell
CHANGFU_CONF=$CHANGFU_SHELL/myconf

# alias for python with vitualenv
alias vpython='source $HOME/workspace/vp/bin/activate && python'
alias dpython='source $HOME/workspace/python_dev/bin/activate && python'

# alias for git_push
alias gitpush='$CHANGFU_SHELL/git_push.sh'

# alias for ssh
alias ssh142='$CHANGFU_SHELL/ssh_auto_login.sh maiziedu 192.168.1.142 1234 /var/www/code.maiziedu'
alias ssh16='$CHANGFU_SHELL/ssh_auto_login.sh root 192.168.1.16 1234 /var/www/code.maiziedufps'

# alias for google
alias chrome='google-chrome-stable & 1>/dev/null 2>&1' 

# alias for subline text 3
alias subl='subl & 1>/dev/null 2>&1'

# alias for test servers
alias ssh_test_id='ssh ld-shaocf@'
