# Keyboard
setxkbmap de
setxkbmap -option "terminate:ctrl_alt_bksp"
setx b off
xset s off
xset -dpms

# Desktop
xrandr --output DisplayPort-0 --auto --output DisplayPort-1 --right-of DisplayPort-0 --output HDMI-A-0 --left-of DisplayPort-0

# Desktop
xrdb -load ~/.Xresources &

# Clipboard
diodon &

# App starter
nm-applet &
clipit &
pnmixer &
blueman-applet &
seafile-applet &
librewolf &

# Scripts
~/Software/scripts/sync_clipboard.sh &

# Vars
export EDITOR=vim
export BROWSER=librewolf

# Start AwesomeWM
exec /usr/bin/awesome

# Wallpaper
feh --bg-scale ~/Pictures/road.jpg
