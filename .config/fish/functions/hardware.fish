function hardware --wraps='inxi -Fnxxz' --description 'alias hardware=inxi -Fnxxz'
  inxi -Fnxxz $argv
        
end
