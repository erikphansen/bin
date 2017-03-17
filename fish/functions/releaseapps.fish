function releaseapps -d "Quickly make release branches, push them to github, create PRs, and open PRs pages in Safari"
  set dirs gmd-insights bizshield-ui customer-analytics-ui angular-reputation-defense-ui launchpad-ui vault-ui feedback-ui ads-ui messenger-ui
  # if we passed in args, use those in place of the default `dirs`
  if test -n "$argv"
    set dirs $argv
  end
  set currentDir (pwd)
  for dir in $dirs
    set timestamp (date +"%Y%m%d%H%M%S")
    cd $HOME/womply/$dir
    git checkout develop
    git pull
    git checkout -b release_$timestamp develop
    git push
    git pull-request -b master -m "Release $timestamp" | pbcopy
    # delete the temp release branch
    git checkout develop
    git branch -d release_$timestamp
    echo 'You can find your PR at:' (pbpaste)
    echo '(That URL has been copied to your clipboard, as well)'
  end
  cd $currentDir
end
