function gmdnav -d 'Builds GMD-Nav and copies it to the given app repo'
  set -l currentDir (pwd)
  cd ~/womply/gmd-nav
  gulp build
  if test -n "$argv"
  and cp -r build/ ~/womply/$argv/node_modules/@womply/gmd-nav/build/
  end
  cd $currentDir
end
