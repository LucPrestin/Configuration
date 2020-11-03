# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/luc/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sporty_256"
#ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /home/luc/.aliases
source /home/luc/.shrc

[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh