function backupbranch -d 'Makes copy of current branch, adding `-backup-timestamp`'
  # exit immediately if we're not in a dir under git source control
  if ! git rev-parse --is-inside-work-tree > /dev/null 2> /dev/null
    echo 'You must be in a git-controlled directory to use this command'
    return 1
  end

  set branchname (git rev-parse --abbrev-ref HEAD)
  set timestamp (date '+%Y-%m-%d-%I-%M-%S')
  git checkout --quiet -b "$branchname-backup-$timestamp" > /dev/null
  git checkout --quiet - > /dev/null
end
