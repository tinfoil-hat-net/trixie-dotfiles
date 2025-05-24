function dotfiles-autoupdate
    config add -u
    config commit -m "Update "(date +%Y-%m-%d\ %H:%M)" "(uname -s)/(uname -m)
    config push
end