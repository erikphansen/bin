function pr -d 'Quickly make a PR of the current branch into `develop` or the branch of your choosing'
  # Reuse the last commit message as the PR message
  git log -1 --pretty=%B > last_commit_message.txt
  set -l basebranch 'develop'
  if count $argv > /dev/null
    set basebranch $argv[1]
  end
  set -l headbranch (git rev-parse --abbrev-ref HEAD)
  echo Pushing changes in `{$headbranch}` up to remote...
  git push -u
  echo ''
  echo Using `hub` to make a PR from `{$headbranch}` into `{$basebranch}`...
  set pr_url (hub pull-request -b $basebranch -F last_commit_message.txt)


  # Add the contents of the PULL_REQUEST_TEMPLATE.md if it exists
  # there is an error in opening this in the editor for tweaking before posting
  # so the PR message needs to be updated on github after creating the PR :(
  if test -f PULL_REQUEST_TEMPLATE.md
    cat PULL_REQUEST_TEMPLATE.md >> last_commit_message.txt
  end

  # delete the temp file using the built in `rm` not my `rm` alias to keep from polluting the macOS trashcan
  command rm last_commit_message.txt
  # if the length of $pr_url is 0...
  if test -z $pr_url
    set_color -o red
    echo ''
    echo ERROR CREATING PULL REQUEST
    set_color normal;
     # exit this function with an error code of 1
    return 1
  else
    echo $pr_url | pbcopy
  end
  echo ''
  set_color -o green
  echo 'SUCCESS!'
  set_color normal; echo ''
  echo 'You can find your PR at:' (set_color -u blue; pbpaste)
  set_color normal
  echo '(That URL has been copied to your clipboard, as well)' (set_color normal)
  set_color normal; echo ''
end
