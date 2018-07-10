# function fish_right_prompt
#   set -l exit_code $status
#   if test $exit_code -ne 0
#     set_color -o red
#   else
#     set_color -o black
#   end
#   printf '%d' $exit_code
#   set_color -o black
#   printf ' < %s' (date +%H:%M:%S)
#   set_color normal
# end

# function fish_right_prompt
#   set_color -o black
#   echo "⬢ "(node -v)
#   set_color normal
# end
