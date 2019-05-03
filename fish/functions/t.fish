function t -d 'tree, add trailing -h to show sizes'
  if [ (count $argv) -gt 0 ]
    set depth $argv[1]
    set rest $argv[2]
    command tree -aF --dirsfirst -L $depth $rest
  else
    command tree -aF --dirsfirst -L 1
  end
end
