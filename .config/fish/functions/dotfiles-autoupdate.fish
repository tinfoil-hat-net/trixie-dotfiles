function dotfiles-autoupdate
    config add -u
    config commit -m "Update "(date +%Y-%m-%d\ %H:%M)" "(lsb_release -sd)
    config push github master
    config push origin master
end
