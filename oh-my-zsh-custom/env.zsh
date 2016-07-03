# oh-my-zsh
DEFAULT_USER=erikhansen

# rbenv
if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
