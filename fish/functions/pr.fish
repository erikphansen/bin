function pr -d 'Quickly make a PR of the current branch into `develop` or the branch of your choosing'
  # Reuse the last commit message as the PR message
  # TODO: this does not work well with multi-line commit messages...
  # ...it fails when doing `-m $msg` below
  set msg (git log -1 --pretty=%B)
  set targetbranch 'develop'
  if test -n "$argv"
    set targetbranch $argv[1]
  end
  git push; and git pull-request -b $targetbranch -m $msg | pbcopy
end
