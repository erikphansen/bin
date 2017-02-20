function wcjs -d 'Builds WCJS and copies it to the given app repo'
  set -l currentDir (pwd)
  cd ~/womply/womply-common-js
  gulp build
  if test -n "$argv"
  and cp -r build/ ~/womply/$argv/node_modules/@womply/womply-common-js/build/
  end
  cd $currentDir
end
