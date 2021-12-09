# This file is sourced by ~/.config/fish/config.fish, so it basically acts as
# the root startup file for a new fish session

# Set the emoji width for iTerm
# set -g fish_emoji_width 2

# set -g fish_color_autosuggestion --bold brblack
# set -g fish_color_cancel -r
# set -g fish_color_command blue
# set -g fish_color_comment --bold --italics black
# set -g fish_color_cwd green
# set -g fish_color_cwd_root red
# set -g fish_color_end brmagenta
# set -g fish_color_error --bold --italics red
# set -g fish_color_escape bryellow --bold
# set -g fish_color_history_current --bold
# set -g fish_color_host normal
# set -g fish_color_match --background=brblue
# set -g fish_color_normal normal
# set -g fish_color_operator cyan
# set -g fish_color_param cyan
# set -g fish_color_quote --italics green
# set -g fish_color_redirection brblue
# set -g fish_color_search_match bryellow --italics --background=brblack
# set -g fish_color_selection white --bold --background=brblack
# set -g fish_color_status red
# set -g fish_color_user brgreen
# set -g fish_color_valid_path --underline

# this keeps getting reset for some reason, so I'm gonna set it with each new shell
# set -g Z_CMD j
# set -g ZO_CMD jo

source ~/bin/fish/private.fish
source ~/bin/fish/init-rbenv.fish
source ~/bin/fish/aliases.fish

status --is-interactive; and source (nodenv init -|psub)

# must `brew install starship` for this to work
starship init fish | source
