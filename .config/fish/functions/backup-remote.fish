function backup-remote --wraps='rclone copy -v /media/anon/int/Backup/trixie/latest/ Opendrive-Crypt:/trixie' --description 'alias backup-remote=rclone copy -v /media/anon/int/Backup/trixie/latest/ Opendrive-Crypt:/trixie'
  rclone copy -v /media/anon/int/Backup/trixie/latest/ Opendrive-Crypt:/trixie $argv
        
end
