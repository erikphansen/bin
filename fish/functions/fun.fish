function fun -d 'just a test function for experimenting'
  if count $argv > /dev/null # we want to trash the result of `count` or it'll be output
    echo 'there is at lease one argument'
    echo $argv
  else
    echo 'no arguments'
  end
  echo ''
  set_color green
  echo 'SUCCESS!'
  set_color normal
  echo 'You can find your PR at:' (set_color -u blue; pbpaste)
  set_color normal
  echo '(That URL has been copied to your clipboard, as well)'
  echo ''
end
