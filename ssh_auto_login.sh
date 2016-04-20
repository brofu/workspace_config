#!/usr/bin/expect -f
set user [lindex $argv 0]
set host [lindex $argv 1]
set password [lindex $argv 2]
set wdir [lindex $argv 3]
set timeout -1
spawn ssh $user@$host
match_max 100000

# input password
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

# change the workdir
expect {
    "Welcome to"
    {
        send -- "cd $wdir\n"
    }
}

interact

