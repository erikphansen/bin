function g -d "`git` or `git status`"
  if count $argv > /dev/null
    git $argv
  else
    git status
  end
end
