function w -d 'install deps and start up vets-website'
  set reponame (basename (git rev-parse --show-toplevel))
  if test $reponame != vets-website
    echo 'You must be working in the `vets-website` repo to run this command'
    return
  end

  yarn install; and yarn watch --open false
end
