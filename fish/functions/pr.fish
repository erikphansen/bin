function pr -d 'Quickly make a PR of the current branch into `develop` or the branch of your choosing'
  # Reuse the last commit message as the PR message
  git log -1 --pretty=%B > pr_message.txt

  # Add the contents of the PULL_REQUEST_TEMPLATE.md if it exists
  if test -f PULL_REQUEST_TEMPLATE.md
    command cat PULL_REQUEST_TEMPLATE.md >> pr_message.txt
    # TODO: open pr_message.txt in the editor and wait before continuing
  else if test -f .github/PULL_REQUEST_TEMPLATE.md
    command cat .github/PULL_REQUEST_TEMPLATE.md >> pr_message.txt
    # TODO: open pr_message.txt in the editor and wait before continuing
  end

  set -l basebranch 'master'
  if count $argv > /dev/null
    set basebranch $argv[1]
    # set -e $argv[1] # this doesn't delete the first item of args
  end
  set -l headbranch (git rev-parse --abbrev-ref HEAD)
  echo Pushing changes in `{$headbranch}` up to remote...
  git push -u
  echo ''
  echo Using `hub` to make a PR from `{$headbranch}` into `{$basebranch}`...
  set pr_url (hub pull-request $argv[2] -b $basebranch -F pr_message.txt)

  # delete the temp file using the built in `rm` not my `rm` alias to keep from polluting the macOS trashcan
  command rm pr_message.txt
  # if the length of $pr_url is 0 there was an error making the PR
  if test -z $pr_url
    set_color -o red
    echo ''
    echo ERROR CREATING PULL REQUEST
    set_color normal;
     # exit this `pr` function with an error code of 1
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
