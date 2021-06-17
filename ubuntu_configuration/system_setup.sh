apt_packages=( 
	gcc
	make
	cmake
	dpkg
	git
	htop
	tree
	tmux
	zsh
	patch
	vim
    curl
	chromium-browser
	telegram-desktop
	gnome-photos
	musescore3
	pdftk
	texlive
	duplicity
	evolution
	supercollider
	audacity
	qjackctl
	puredata
	v4l2loopback-dkms
	obs-studio
	anki
	deja-dup
	keepassxc
	solaar
	simple-scan
	gnome-backgrounds
	gnome-todo
    gnome-tweaks
	chrome-gnome-shell
	gnome-shell-extensions
)

snap_packages=(
	code
    discord
)

removeable_packages=()

echo "//-------------- updating packages --------------//"

sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt autoclean

echo "//-------------- installing apt packages --------------//"

sudo apt install ${apt_packages[*]}

echo "//-------------- installing snap packages --------------//"

sudo snap install ${snap_packages[*]}

echo "//-------------- removing packages --------------//"

sudo apt remove ${removeable_packages[*]}

echo "//-------------- installing oh-my-zsh --------------//"

echo "source $HOME/.aliases" >> ~/.zshrc
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "//-------------- setting shortcuts --------------//"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch Terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal --window-with-profile=Default'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Primary><Alt><t>'
