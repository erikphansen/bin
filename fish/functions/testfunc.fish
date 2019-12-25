function testfunc
  echo "starting!"
  echo "count: count $argv"
  echo "$argv[1]"
  echo "$argv[2]"
  set -l rest $argv[2..-1]
  echo $rest
end
