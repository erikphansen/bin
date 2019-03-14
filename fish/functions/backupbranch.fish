function backupbranch -d 'Makes copy of current branch, adding `-backup`'
  # TODO: exit if not in a git repo
  set branchname (git rev-parse --abbrev-ref HEAD)
  set timestamp (date '+%Y-%m-%d-%I-%M-%S')
  git checkout -b "$branchname-backup-$timestamp"
  git checkout -
end
