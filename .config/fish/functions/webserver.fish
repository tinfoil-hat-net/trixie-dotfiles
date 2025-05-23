function webserver --wraps='python3 -m http.server' --description 'alias webserver=python3 -m http.server'
  python3 -m http.server $argv
        
end
