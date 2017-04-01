function fun -d 'just a test function for experimenting'
  if count $argv > /dev/null # we want to trash the result of `count` or it'll be output
    echo 'there is at lease one argument'
    echo $argv
  else
    echo 'no arguments'
  end
end
