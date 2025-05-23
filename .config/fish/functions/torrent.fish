function torrent --wraps='aria2c --follow-torrent=mem --seed-time=0 -j 10' --description 'alias torrent=aria2c --follow-torrent=mem --seed-time=0 -j 10'
  aria2c --follow-torrent=mem --seed-time=0 -j 10 $argv
        
end
