function copy-music --wraps='rclone copy -v /media/anon/Enclosure-1/Musik Opendrive-Crypt:media/Musik --ignore-existing' --description 'alias copy-music=rclone copy -v /media/anon/Enclosure-1/Musik Opendrive-Crypt:media/Musik --ignore-existing'
  rclone copy -v /media/anon/Enclosure-1/Musik Opendrive-Crypt:media/Musik --ignore-existing $argv
        
end
