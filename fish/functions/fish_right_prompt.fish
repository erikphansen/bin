function fish_right_prompt
  set -l exit_code $status
  if test $exit_code -ne 0
    set_color red
  else
    set_color black
  end
  printf '%d' $exit_code
  set_color black
  printf ' < %s' (date +%H:%M:%S)
  set_color normal
end
