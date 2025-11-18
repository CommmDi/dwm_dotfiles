setxkbmap us,ua -option 'grp:caps_toggle'
feh --bg-fill ~/.config/dwm/wallpaper.png
picom &
dunst -config ~/.config/dunst/dunst &
while true; do
	~/.config/dwm/dwmbar.sh
	sleep 0.1s
done &
exec dwm
