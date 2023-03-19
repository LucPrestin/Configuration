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

ln -s $PWD/.config/nvim ~/.config/nvim

for file in "${files[@]}"; do
    ln -s $PWD/${file} $HOME/${file}
done
