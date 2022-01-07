#!/bin/zsh
files=(
    .login
    .logout
    .profile
    .rc
    .aliases
    .bash_logout
    .bash_profile
    .bashrc
    .zlogin
    .zlogout
    .zprofile
    .zshrc
    .tmux.conf
    .vimrc
)

for file in "${files[@]}"; do
    if [ -e $HOME/${file} ]; then
        rm $HOME/${file};
    fi
done

./init.sh
