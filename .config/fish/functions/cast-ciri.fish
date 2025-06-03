function cast-ciri --wraps='sudo openvpn Documents/openvpn/ciri.ovpn' --wraps='sudo openvpn --config ~/Documents/openvpn/ciri.ovpn' --description 'alias cast-ciri=sudo openvpn --config ~/Documents/openvpn/ciri.ovpn'
  sudo openvpn --config ~/Documents/openvpn/ciri.ovpn $argv
        
end
