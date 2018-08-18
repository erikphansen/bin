# This file is sourced by ~/.config/fish/config.fish, so it basically acts as
# the root startup file for a new fish session

# colors - commented out because these seem to have been set with the -U flag
# So in the future I could do `set -e fish_color_autosuggestion` to delete a color
# set fish_color_autosuggestion --bold black
# set fish_color_command blue
# set fish_color_comment --bold --italics black
# set fish_color_error --bold --italics red
# set fish_color_operator cyan
# set fish_color_param cyan
# set fish_color_quote --italics green

source ~/bin/fish/init-rbenv.fish
source ~/bin/fish/aliases.fish

status --is-interactive; and source (nodenv init -|psub)
