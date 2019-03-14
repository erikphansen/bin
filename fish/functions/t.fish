function t -d 'tree'
  if [ (count $argv) -gt 0 ]
    set depth $argv[1]
    set args $argv[2]
    command tree -ashF --du --dirsfirst -L $depth $args
  else
    command tree -ashF --du --dirsfirst
  end
end
