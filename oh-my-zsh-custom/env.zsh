# oh-my-zsh
DEFAULT_USER=erikhansen

# rbenv
if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# customize my Bullet Train ZSH theme
BULLETTRAIN_GIT_BG=green
BULLETTRAIN_GIT_FG=black
BULLETTRAIN_GIT_BG_DIRTY=red
BULLETTRAIN_GIT_FG_DIRTY=black
BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_CONTEXT_SHOW=true
BULLETTRAIN_CONTEXT_DEFAULT_USER=erikhansen
BULLETTRAIN_NVM_SHOW=true
BULLETTRAIN_NVM_BG=white
BULLETTRAIN_NVM_FG=black
BULLETTRAIN_GIT_ADDED=" ✚"
BULLETTRAIN_GIT_MODIFIED=" ✹"
BULLETTRAIN_GIT_DELETED=" ✖"
BULLETTRAIN_GIT_UNTRACKED=" ✭"
