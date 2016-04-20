#!/usr/bin/expect -f
set user [lindex $argv 0]
set host [lindex $argv 1]
set password [lindex $argv 2]
set timeout -1
spawn ssh $user@$host
match_max 100000


expect {
    "*assword*"
    {
        send -- "$password\n"
    }
#    "*passphrase*"
#    {
#        send -- "$password\n"
#    }
#    "continue connecting"
#    {
#        send -- "yes\n"
#    }
}

interact