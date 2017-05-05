function releaseapps -d "Quickly make release branches, push them to github, create PRs, and open the PR pages in your browser"
  # set default vars in case no args are passed or $WOMPLY_DIR isn't set
  set dirs gmd-insights bizshield-ui customer-analytics-ui angular-reputation-defense-ui launchpad-ui vault-ui feedback-ui ads-ui messenger-ui
  set project_dir "$HOME/womply"
  #
  if test $WOMPLY_DIR
    set project_dir $WOMPLY_DIR
  end
  # if we passed in args, use those in place of the default `dirs` var
  if count $argv > /dev/null
    set dirs $argv
  end
  set currentDir (pwd)
  # collect all the PR links that the `git pull-request` command spits out
  # this will be copied to the clipboard after making all the PRs
  set links
  for dir in $dirs
    cd $project_dir/$dir
    git checkout develop
    git pull
    set timestamp (date +"%Y%m%d%H%M%S")
    git checkout -b release_$timestamp
    git push
    set pr_url (git pull-request -b master -m "Release $timestamp")
    set links "$links$pr_url"\n
    # delete the temp release branch
    git checkout develop
    git branch -D release_$timestamp
    echo 'You can find your PR at: $pr_url'
    echo '(That URL has been copied to your clipboard, as well)'
  end
  echo $links | pbcopy
  cd $currentDir
end
