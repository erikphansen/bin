function concat_var
  set pasteboard
  for v in first second third fourth
    set pasteboard "$pasteboard$v"\n
  end
  # remove the final trailing newline character
  echo $pasteboard
  set pasteboard (string sub -s 1 -l 10 $pasteboard)
  echo $pasteboard
  # echo $pasteboard | pbcopy
  # echo $pasteboard
end
