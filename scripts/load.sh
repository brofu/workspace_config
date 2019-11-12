
# load the process of setting up workspace configs

pushd "$(dirname "$0")"

# common config
. base.sh
ln -sf $PWD/base.sh $HOME/.base.sh

# config bash
. config_bash.sh

# config oh-my-zsh
. config_oh_my_zsh.sh


