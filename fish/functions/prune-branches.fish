function prune-branches -d 'force-deletes local branches whose upstream tracking branches have been deleted (likely because those branches were merged)'
  git fetch -p
  for branch in (git branch -vv | grep ': gone]' | awk '{print $1}')
    git branch -D $branch
  end
end
