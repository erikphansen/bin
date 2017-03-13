function clone -d 'clone repo and attempt to `cd` into its new directory'
  if [ (count $argv) -lt 1 ]
    echo 'You must pass in repo address to clone from'
    return
  end
  if [ (count $argv) -gt 1 ]
    set newdir $argv[2]
  else
    # Example git repo address: git@github.com:erikphansen/bin.git
    set newdir (string split '/' $argv[1])
    set newdir (string split '.' $newdir[2])
    set newdir $newdir[1]
  end
  git clone $argv
  and cd $newdir
end
