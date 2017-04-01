function wcjs -d 'Builds WCJS and copies it to the given app repo'
  set -l currentDir (pwd)
  cd ~/womply/womply-common-js
  gulp build
  if count $argv > /dev/null
  and cp -R build ~/womply/$argv/node_modules/@womply/womply-common-js/
  end
  cd $currentDir
end
