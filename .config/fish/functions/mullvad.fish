function mullvad --wraps='cd ~/Documents/openvpn/ && sudo openvpn mullvad_se_all.conf' --description 'alias mullvad=cd ~/Documents/openvpn/ && sudo openvpn mullvad_se_all.conf'
  cd ~/Documents/openvpn/ && sudo openvpn mullvad_se_all.conf $argv
        
end
