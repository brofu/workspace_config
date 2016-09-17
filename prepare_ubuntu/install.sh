#!/usr/bin/expect -f

set tool [lindex $argv 0]
set password "temp"

spawn sudo apt-get install $tool

expect {
    # install password if required
    "password"
    {
        send -- "$password\n"
    }
}

expect {
    # confirm
    "Y/n"
    {
        send -- "y\n"
    }
}

expect eof

exit