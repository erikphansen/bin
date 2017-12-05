function releaseapps -d "Quickly make release branches, push them to github, create PRs, and open the PR pages in your browser"
  # set default vars in case no args are passed or $WOMPLY_DIR isn't set
  set dirs ads-ui angular-reputation-defense-ui bizshield-ui customer-analytics-ui customer-directory-ui feedback-ui gmd-insights launchpad-ui messenger-ui more-reviews-ui reputation-defense-admin-ui signup-ui vault-ui
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
  for dir in $dirs
    cd $project_dir/$dir
    and git checkout develop
    and git pull
    and set timestamp (date +"%Y%m%d%H%M%S")
    and git checkout -b release_$timestamp
    and git push
    and hub pull-request -b master -m "Release $timestamp" | pbcopy
    # delete the temp release branch
    and git checkout develop
    and git branch -D release_$timestamp
    echo ''
    set_color green
    echo 'SUCCESS!'
    set_color normal
    echo 'You can find your PR at:' (set_color -u blue; pbpaste)
    set_color normal
    echo '(That URL has been copied to your clipboard, as well)'
    echo ''
  end
  cd $currentDir
end
