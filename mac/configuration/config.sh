
check_critical_success()
{
	if [ $1 = 0 ]; then
		echo $2
	else
		echo $3
		exit 1
	fi
}


### init workspace

WORKSPACE=$HOME/workspace

if [ ! -d $WORKSPACE ]; then
	mkdir $WORKSPACE
	check_critical_success $? "$WORKSPACE created successfully" "$WORKSPACE created failed"
else
	echo "$WORKSPACE already exists"
fi


### link .bashrc

MAC_SHELL=$WORKSPACE/shell/mac
BASHRC=$HOME/.bashrc

if [ ! -f $BASHRC ]; then
	ln -s $MAC_SHELL/.bashrc $BASHRC
	check_critical_success $? "$BASHRC created successfully" "$BASHRC created failed"
else
	echo "$BASHRC already exists"	
fi


### vim config

COMMON_TOOLS=$WORKSPACE/tools
VIMRC=$HOME/.vimrc

if [ ! -f $VIMRC ]; then
	ln -s $COMMON_TOOLS/vim/.vimrc $VIMRC
	check_critical_success $? "$VIMRC created successfully" "$VIMRC created failed" 
else
	echo "$VIMRC already exists"
fi


### tmux config

TMUX_CONIFG=$HOME/.tmux.conf

if [ ! -f $TMUX_CONIFG ]; then
	ln -s $COMMON_TOOLS/tmux/.tmux.conf $TMUX_CONIFG
	check_critical_success $? "$TMUX_CONIFG created successfully" "$TMUX_CONIFG created created failed" 
else
	echo "$TMUX_CONIFG already exists"
fi
