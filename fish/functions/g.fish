function g -d "`git` or `git status`"
  if test $argv
    git $argv
  else
    git status
  end
end
