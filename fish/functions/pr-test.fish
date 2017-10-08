function pr-test -d 'Quickly make a PR of the current branch into `develop` or the branch of your choosing'
  echo ''
  set_color -o green
  echo 'SUCCESS!'
  echo ''; set_color normal
  echo 'You can find your PR at:' (set_color -u blue; echo 'www.site.com')
  set_color normal
  echo '(That URL has been copied to your clipboard, as well)'; set_color normal
  echo ''
end
