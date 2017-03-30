function fun
  if test $argv[1]
    echo 'there is an arg'
    echo $argv
  else
    echo 'no args'
  end
end
