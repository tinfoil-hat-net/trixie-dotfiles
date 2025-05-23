function installation-age --wraps=stat\ -c\ \%w\ /\ \|\ cut\ -d\\\ \ -f1 --description alias\ installation-age=stat\ -c\ \%w\ /\ \|\ cut\ -d\\\ \ -f1
  stat -c %w / | cut -d\  -f1 $argv
        
end
