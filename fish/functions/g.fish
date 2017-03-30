function g -d "`git` or `git status`"
  if test -n "$argv"
    git $argv
  else
    git status
  end
end
