function t -d 'tree, add trailing -h to show sizes'
  if [ (count $argv) -gt 0 ]
    set depth $argv[1]
    set args $argv[2]
    command tree -aF --dirsfirst -L $depth $args
  else
    command tree -aF --dirsfirst $args
  end
end
