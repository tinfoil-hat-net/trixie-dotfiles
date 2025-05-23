function remote-laptop --wraps='xrandr --output DisplayPort-0 --mode 1366x768_60.00 --output DisplayPort-1 --off --output HDMI-A-0 --off' --description 'alias remote-laptop=xrandr --output DisplayPort-0 --mode 1366x768_60.00 --output DisplayPort-1 --off --output HDMI-A-0 --off'
  xrandr --output DisplayPort-0 --mode 1366x768_60.00 --output DisplayPort-1 --off --output HDMI-A-0 --off $argv
        
end
