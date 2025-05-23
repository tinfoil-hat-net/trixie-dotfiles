function reechat --wraps='ssh chrissly@vps -t screen -rd weechat' --description 'alias reechat=ssh chrissly@vps -t screen -rd weechat'
  ssh chrissly@vps -t screen -rd weechat $argv
        
end
