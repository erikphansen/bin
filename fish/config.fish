set WOMPLY_DIR "$HOME/womply"

source ~/bin/fish/init-rbenv.fish
source ~/bin/fish/aliases.fish

# nvm use 6.9.1
status --is-interactive; and source (nodenv init -|psub)
