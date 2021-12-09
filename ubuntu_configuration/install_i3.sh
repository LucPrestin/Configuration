sudo apt install i3 i3-wm i3lock i3status suckless-tools rofi

i3configs = (
	i3
	i3blocks
	rofi
)

for name in "${i3configs[@]}"; do
	ln -s ../.config/$name ~/.config/$name
done
