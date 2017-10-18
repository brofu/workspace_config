#/bin/bash

#	tmux

check_install_success()
{
	if [ $1 = 0 ]; then
		echo "$2 install successfully"
	else
		echo "$2 install failed"
	fi
}

bash install_brew.sh install_brew.log >> install_brew.log &2>>1
check_install_success $? "brew"

bash install_tmux.sh install_tmux.log >> install_tmux.log &2>>1
check_install_success $? "tmux"
