function marked -d 'open a file in Marked'
  if [ (count $argv) -gt 0 ]
    set markdownfile $argv[1]
    open -a "Marked 2" $markdownfile
  end
  open -a "Marked 2"
end
