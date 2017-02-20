function releaseapps
  set dirs gmd-insights bizshield-ui customer-analytics-ui angular-reputation-defense-ui launchpad-ui vault-ui feedback-ui ads-ui messenger-ui
  if test -n "$argv"
  set dirs $argv
  end
  set currentDir (pwd)
  for dir in $dirs
  set timestamp (date +"%Y%m%d%H%M%S")
  cd $HOME/womply/$dir
  git checkout -b release_$timestamp develop
  git push
  # sadly the following command does not output the URL of the PR, so we can't easily save it to the pasteboard
  git pull-request -b master -m "Release $timestamp" -o
  # delete the temp release branch
  git checkout develop
  git branch -d release_$timestamp
  end
  cd $currentDir
end
