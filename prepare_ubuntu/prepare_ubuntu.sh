#!/usr/bin/expect -f


set password [lindex $argv 0]

# set up git
spawn sudo apt-get install git
match_max 100000

# input password
expect {
    "*assword*"
        {
            send -- "$password\n"
        }
# confirm
}
expect {
    "[Y/n]"
    {
        send -- "\n"
    }
}

interact