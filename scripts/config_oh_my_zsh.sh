
# install item2

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# link files
ln -sf $CONFIGROOT_FILES/.oh-my-zsh $HOME/.oh-my-zsh
# link custom configs before invoke the oh-my-zsh.sh
ln -sf $CONFIGROOT_CONFIGS/oh-my-zsh/custom/* $ZSH/custom/

# link .zshrc
ln -sf $CONFIGROOT_CONFIGS/oh-my-zsh/.zshrc $HOME/.zshrc
