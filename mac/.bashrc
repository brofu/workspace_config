# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
	# for OSX
	alias ls='ls -G'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# system configuration
export HISTTIMEFORMAT="%d/%m/%y %T "

# enable alias 
. $HOME/workspace/shell/myconf/my_alias.sh

# enable custom configuration
. $HOME/workspace/shell/myconf/my_configs.sh

# setup necesary custom configuration
. $HOME/workspace/shell/myconf/setup_tools.sh

