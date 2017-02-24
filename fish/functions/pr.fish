# alias pr "git push; and git pull-request -b develop -o"
function pr
  set targetbranch 'develop'
  if test -n "$argv"
    set targetbranch $argv[1]
  end
  git push; and git pull-request -b $targetbranch -o
end
