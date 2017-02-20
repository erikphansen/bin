function __parse_current_folder -d "Replace '$HOME' with '~' or '🏠'"
  set dir (pwd | sed "s|$HOME|~|")
  # simply use the house emoji if in the home dir
  set dir (echo $dir | sed "s/^~\$/🏠/")
  echo $dir
end
