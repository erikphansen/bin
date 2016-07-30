# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  # or set -gx OMF_PATH "$HOME/.local/share/omf"
  or set -gx OMF_PATH "$HOME/bin/omf"

# Customize Oh My Fish configuration path.
# set -gx OMF_CONFIG "/Users/erikhansen/.config/omf"
set -gx OMF_CONFIG "$HOME/bin/omf-config"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
