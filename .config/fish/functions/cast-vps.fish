function cast-vps --wraps='sudo openvpn Documents/openvpn/vps.ovpn' --wraps='sudo openvpn --config ~/Documents/openvpn/vps.ovpn' --description 'alias cast-vps=sudo openvpn --config ~/Documents/openvpn/vps.ovpn'
  sudo openvpn --config ~/Documents/openvpn/vps.ovpn $argv
        
end
