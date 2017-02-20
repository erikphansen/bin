bin
===

My shell setup. Just using Github as an offsite backup of this Git repo.

Sunday, February 19, 2017: Removed Oh My Fish as an experiment. I had to symlink my `fish/functions/` directory from this repo to the default location for the user's custom fish functions: `ln -s ~/bin/fish/functions ~/.config/fish`

Wednesday, July 27, 2016: I've started playing the the Fish shell and Oh My Fish. I've added a `config.fish` file that is sourced by the main Fish startup file, `~/.config/fish/config.fish`, which in turn sets `~/bin/omf-config` as the Oh My Fish config path, `OMF_CONFIG`.

Wednesday, May 18, 2016: Added a `zshrc` file to the mix since I've been using ZSH and Oh My ZSH for some time now. *I did notice that when setting the contents of `~/.zshrc` to `source ~/bin/dotfiles/zshrc`, the `src` command as defined in the `zsh_reload` plugin no longer works.*

This `bin` dir lives locally in my home folder. The contents of my shell config files are as follows.

    # ~/.config/fish/config.fish
    source ~/bin/fish/config.fish

    # ~/.zshrc:

    source ~/bin/dotfiles/zshrc

    # ~/.bashrc:

    source ~/bin/dotfiles/bashrc

    # ~/.bash_profile:

    if [ -f ~/.bashrc ];
    then
        source ~/.bashrc
    fi

This way I can keep all of my config files under source control easily.
