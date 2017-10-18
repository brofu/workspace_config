#/bin/bash

TMUX_PATH=`which tmux`
echo $TMUX_PATH

if [ $1 ]; then
	LOG=$1
else
	LOG=install_tmux.log
fi

if [ ! -x "$TMUX_PATH" ]; then
		brew install tmux >> $LOG &2>>1
fi	

