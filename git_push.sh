#!/usr/bin/expect
# this script is used for git push without input username and password every time
set des [lindex $argv 0]
set local [lindex $argv 1]
set remote [lindex $argv 2]
#spawn process command should be hidden
spawn -noecho echo "pushing update from local '$des' to remote '$local/$remote'..."
expect eof
spawn -noecho git push $des $local:$remote
# the following info should be hidden
log_user 0
expect "Username"
send "$env(GIT_USERNAME)\r"
expect "Password"
send "$env(GIT_PASSWD)\r"
log_user 1
expect eof