bin
===

My shell setup. Just using Github as an offsite backup of this Git repo.

Wednesday, May 18, 2016: Added a `zshrc` file to the mix since I've been using ZSH and Oh My ZSH for some time now. *I did notice that when setting the contents of `~/.zshrc` to `source ~/bin/dotfiles/zshrc`, the `src` command as defined in the `zsh_reload` plugin no longer works.*

This `bin` dir lives locally in my home folder. The contents of my shell config files are as follows.

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
