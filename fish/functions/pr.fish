function pr -d 'Quickly make a PR of the current branch into `develop` or the branch of your choosing'
  # Reuse the last commit message as the PR message
  git log -1 --pretty=%B > msg.txt
  set targetbranch 'develop'
  if count $argv > /dev/null
    set targetbranch $argv[1]
  end
  git push
  hub pull-request -b $targetbranch -F msg.txt | pbcopy
  command rm msg.txt
  echo ''
  set_color -o green
  echo 'SUCCESS!'
  set_color normal; echo ''
  echo 'You can find your PR at:' (set_color -u blue; pbpaste)
  set_color normal
  echo '(That URL has been copied to your clipboard, as well)' (set_color normal)
  set_color normal; echo ''
end
