# colors
set fish_color_autosuggestion --bold black
set fish_color_command blue
set fish_color_comment --bold --italics black
set fish_color_error --bold --italics red
set fish_color_operator cyan
set fish_color_param cyan
set fish_color_quote --italics green

set WOMPLY_DIR "$HOME/womply"

source ~/bin/fish/init-rbenv.fish
source ~/bin/fish/aliases.fish

status --is-interactive; and source (nodenv init -|psub)
