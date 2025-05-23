function xfix --wraps='xrandr --output DisplayPort-0 --auto --output DisplayPort-1 --right-of DisplayPort-0 --output HDMI-A-0 --left-of DisplayPort-0' --description 'alias xfix=xrandr --output DisplayPort-0 --auto --output DisplayPort-1 --right-of DisplayPort-0 --output HDMI-A-0 --left-of DisplayPort-0'
  xrandr --output DisplayPort-0 --auto --output DisplayPort-1 --right-of DisplayPort-0 --output HDMI-A-0 --left-of DisplayPort-0 $argv
        
end
