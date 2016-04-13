#!/usr/bin/expect
set des [lindex $argv 0]
set local [lindex $argv 1]
set remote [lindex $argv 2]
spawn echo "pushing update from local '$des' to remote '$local/$remote'..." > /dev/null
expect eof
spawn git push $des $local:$remote
expect "Username"
send "ispcfs@gmail.com\r"
expect "Password"
send "352213os839836\r"
expect eof