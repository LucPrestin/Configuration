pacman_packages=( 
	gcc
	base-devel
	make
	cmake
	dpkg
	yay
	git
	htop
	tree
	tmux
	zsh
	lib32-pam
	code
	patch
	vim
	chromium
	telegram-desktop
	gnome-photos
	musescore
	pdftk
	texlive-core
	duplicity
	evolution
	discord
	supercollider
	audacity
	qjackctl
	pd
	v4l2loopback-dkms
	obs-studio
	anki
	deja-dup
	keepassxc
	solaar
	simple-scan
	gnome-backgrounds
	manjaro-printer
	gnome-todo
	signal-desktop
)

yay_packages=(
	typora
	libstdc++5
	slack-desktop
	spotify
	zoom
	obs-v42lsink
)

removeable_packages=()

echo "//-------------- updating packages --------------//"

sudo pacman -Syu --noconfirm

echo "//-------------- installing pacman packages --------------//"

sudo pacman -Sy --noconfirm ${pacman_packages[*]}

echo "//-------------- installing yay packages --------------//"

yay -Sy ${yay_packages[*]}

echo "//-------------- removing packages --------------//"

sudo pacman -Rus --noconfirm ${removeable_packages[*]}

echo "//-------------- installing snx --------------//"

sudo $PWD/snx_install.sh

echo "//-------------- installing oh-my-zsh --------------//"

echo "source $HOME/.aliases" >> ~/.zshrc
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "//-------------- setting shortcuts --------------//"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch Terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal --window-with-profile=Default'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Primary><Alt><t>'
