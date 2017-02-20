function clone -d 'clone repo and attempt to `cd` into its new directory'
  set newdir (string split '/' $argv)
  set newdir (string split '.' $newdir[2])
  set newdir $newdir[1]
  git clone $argv
  and cd $newdir
end
