#!/bin/bash
apt_packages=( 
	gcc
	make
	cmake
	build-essential
	git
	code
	discord
	signal-desktop
	telegram-desktop
	obsidian
	spotify
	htop
	tree
	tmux
	zsh
	patch
	vim
	chromium-browser
	telegram-desktop
	gnome-photos
	musescore4
	pdftk
	texlive
	deja-dup
	evolution
	supercollider
	audacity
	qjackctl
	puredata
	v4l2loopback-dkms
	anki
	slack
	keepassxc
	solaar
	simple-scan
	gnome-backgrounds
	gnome-shell-extensions
	chrome-gnome-shell
	zoom
	autojump
)

echo "//-------------- updating packages --------------//"

sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt autoclean

echo "//-------------- installing apt packages --------------//"

for package in "${apt_packages[@]}" ;
do
	sudo apt install -y $package
done

echo "//-------------- installing oh-my-zsh --------------//"

echo "source $HOME/.aliases" >> ~/.zshrc
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "//-------------- setting shortcuts --------------//"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch Terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal --window-with-profile=Default'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Primary><Alt><t>'
