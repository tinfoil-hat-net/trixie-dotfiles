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
feh --bg-scale ~/Pictures/road.jpg

# Clipboard
diodon &

# App starter
nm-applet &
pnmixer &
blueman-applet &
seafile-applet &
librewolf &

# Vars
export EDITOR=vim
export BROWSER=librewolf

# Start AwesomeWM
exec /usr/bin/awesome
