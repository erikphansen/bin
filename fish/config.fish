# This file is sourced by ~/.config/fish/config.fish, so it basically acts as
# the root startup file for a new fish session

# colors - commented out because these seem to have been set with the -U flag
# So in the future I could do `set -e fish_color_autosuggestion` to delete a color
# set fish_color_autosuggestion --bold brblack
# set fish_color_command blue
# set fish_color_comment --bold --italics brblack
# set fish_color_error --bold --italics red
# set fish_color_operator cyan
# set fish_color_param cyan
# set fish_color_quote --italics green

# this keeps getting reset for some reason, so I'm gonna set it with each new shell
set -U Z_CMD j

source ~/bin/fish/private.fish
source ~/bin/fish/init-rbenv.fish
source ~/bin/fish/aliases.fish

status --is-interactive; and source (nodenv init -|psub)

# must `brew install starship` for this to work
eval (starship init fish)
