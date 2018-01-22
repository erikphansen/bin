function djs
  if [ (count $argv) -lt 1 ]
    echo 'You must pass in a term to search for in Dash\'s JavaScript docs'
    return
  end
  open dash://js:$argv[1]
end
