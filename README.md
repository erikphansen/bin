bin
===

My shell setup. Just using Github as an offsite backup of this Git repo.

This `bin` dir lives locally in my home folder. The contents of my shell config files are as follows:

```shell
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
```

Finally, set up some symlinks:

```shell
# ~/.config/fish/functions is a symlink pointing at ~/bin/fish/functions
ln -s ~/bin/fish/functions ~/.config/fish

# ~/.gitconfig and ~/.gitignore_global are symlinks
ln -s ~/bin/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/bin/dotfiles/.gitignore_global ~/.gitignore_global

# link the `hammerspoon` as `.hammerspoon` in my home folder
ls -s ~/bin/hammerspoon ~/.hammerspoon
# link the `karabiner` folder in the `~/.config/` folder
ln -s ~/bin/karabiner ~/.config/
```

This way I can keep all of my config files under source control easily.

## Update Notes

**Wednesday, April 5, 2017:** Added `karabiner` config folder.
**Wednesday, April 5, 2017:** Added `hammerspoon` config folder.

**Sunday, March 19, 2017:** Added global `.gitconfig` and `.gitignore_global` files to this repo under `dotfiles/`. This requires replacing those files in my home folder with symlinks.

**Sunday, February 19, 2017:** Removed Oh My Fish as an experiment. I had to symlink my `fish/functions/` directory from this repo to the default location for the user's custom fish functions: `ln -s ~/bin/fish/functions ~/.config/fish`

**Wednesday, July 27, 2016:** I've started playing the the Fish shell and Oh My Fish. I've added a `config.fish` file that is sourced by the main Fish startup file, `~/.config/fish/config.fish`, which in turn sets `~/bin/omf-config` as the Oh My Fish config path, `OMF_CONFIG`.

**Wednesday, May 18, 2016:** Added a `zshrc` file to the mix since I've been using ZSH and Oh My ZSH for some time now. *I did notice that when setting the contents of `~/.zshrc` to `source ~/bin/dotfiles/zshrc`, the `src` command as defined in the `zsh_reload` plugin no longer works.*
