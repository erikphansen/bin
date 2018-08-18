function clone -d 'clone repo and `cd` into its new directory'
  if [ (count $argv) -lt 1 ]
    echo 'You must pass in repo address to clone from'
    return
  end

  # If the user explicitly sets the name of the local copy...
  if [ (count $argv) -gt 1 ]
    set newdir $argv[2]

  # Otherwise we need to do some slicing and dicing to get the project name from the repo URL
  else
    # Example ssh git repo address:     git@github.com:erikphansen/bin.git
    # Another ssh git repo address:     git@github.com:erikphansen/json-schema-org.github.io.git (note all the dots in the project name!)
    # Example https git repo address:   https://github.com/department-of-veterans-affairs/design-system.git
    # TODO: make this also work with https addresses
    # Just grab the part after the last forward slash...
    set repoParts (string split -r -m 1 '/' $argv[1])
    set repoName $repoParts[-1] # `$repoParts[-1]` is the last item in the `repoParts` list
    # ...then remove the trailing .git
    set newdir (string replace -r '\.git$' '' $repoName)
  end
  git clone $argv
  echo $newdir
  and cd $newdir
end
