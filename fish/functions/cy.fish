function cy -d 'run cypress tests in interactive mode'
  set reponame (basename (git rev-parse --show-toplevel))
  if test $reponame != vets-website
    echo 'You must be working in the `vets-website` repo to run this command'
    return
  end

  yarn cy:open
end
