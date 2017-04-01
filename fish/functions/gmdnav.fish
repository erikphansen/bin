function gmdnav -d 'Builds GMD-Nav and copies it to the given app repo'
  set -l currentDir (pwd)
  cd ~/womply/gmd-nav
  gulp build
  if count $argv > /dev/null
    and cp -R build ~/womply/$argv/node_modules/@womply/gmd-nav/
  end
  cd $currentDir
end
