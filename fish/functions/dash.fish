function dash
  if [ (count $argv) -lt 1 ]
    echo 'You must pass in a term to search for in Dash'
    return
  end
  open dash://$argv[1]
end
