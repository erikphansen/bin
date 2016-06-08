# ls better
alias lsa='ls -hal'
alias la="ls -aF"
alias ld="ls -ld"
alias ll="ls -l"
alias lt='ls -At1 && echo "------Oldest--"'
alias ltr='ls -Art1 && echo "------Newest--"'

#
# me() {
#   echo `whoami`@`hostname`
# }
alias me='echo `whoami`@`hostname`'
alias wifi='networksetup -setairportpower en0'
alias refreshfinder='sudo find / -name .DS_Store -delete; killall Finder'

# apps
# alias l='less'
alias tt='stree'
alias mxmlc='/Developer/SDKs/flex_sdk_4/bin/mxmlc'
alias fcsh='/Developer/SDKs/flex_sdk_4/bin/fcsh'

# common directories
alias ta='cd ~/tellapart'
alias db='cd ~/Dropbox'
alias p='cd ~/projects'
alias pcs='cd ~/pcs'
alias work='cd ~/projects-work'
alias down='cd ~/Downloads'
alias desk='cd ~/Desktop'
alias pp='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User'
###
# The function and alias below are from
# [Brett Terpstra](http://brettterpstra.com/2013/02/09/quick-tip-jumping-to-the-finder-location-in-terminal/)
###
# cd to the path of the front Finder window
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}
# open current path in Finder
alias f='open -a Finder ./'

# Utility
alias e='subl'
alias env='subl ~/bin/dotfiles/zshrc ~/bin/oh-my-zsh-custom/'
# alias ea='subl -w ~/bin/dotfiles/bash/aliases && src'
# alias ee='subl -w ~/bin/dotfiles/bash/config && src'
alias ax="chmod a+x" # $ ax my-script.sh
alias zzz="pmset sleepnow"

newdir() {
    mkdir $1;
    cd $1
}

# git aliases
alias g='git status'
alias pull='git pull'
alias gf='git fetch'
alias push='git push'
alias gd='git diff | subl -w'
alias gdd='git difftool'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -v -a -m'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gm='git checkout master'
alias grom='git rebase origin/master'
alias gfr='gf; grom'

# Remove git from a project
alias ungit="find . -name '.git' -exec rm -rf {} \;"
# Remove svn from a projects
alias unsvn="find . -name '.svn' -exec rm -rf {} \;"

###
# Everything below is from [Brett Terpstra](http://brettterpstra.com/2013/03/31/a-few-more-of-my-favorite-shell-aliases/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+BrettTerpstra+%28Brett+Terpstra%29)
###
#copy output of last command to clipboard
alias cl="fc -e -|pbcopy"

# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

# copy the working directory path
alias cpwd='pwd|tr -d "\n"|pbcopy'

# DNS (with update thanks to @blanco)
alias flush="sudo killall -HUP mDNSResponder"

# share history between terminal sessions
alias he="history -a" # export history
alias hi="history -n" # import history

# Get your current public IP
alias ip="curl ipv4.icanhazip.com && curl ipv6.icanhazip.com"

# mount all connected Firewire disks
alias mountall='system_profiler SPFireWireDataType | grep "BSD Name: disk.$" | sed "s/^.*: //" | (while read i; do /usr/sbin/diskutil mountDisk $i; done)'
# unmount them all
alias unmountall='system_profiler SPFireWireDataType | grep "BSD Name: disk.$" | sed "s/^.*: //" | (while read i; do /usr/sbin/diskutil unmountDisk $i; done)'

# recursively delete Dropbox conflicted files
alias rmdbc="find . -name *\ \(*conflicted* -exec rm {} \;"

# mute the system volume
alias stfu="osascript -e 'set volume output muted true'"

# time machine log
alias tmlog="syslog -F '\$Time \$Message' -k Sender com.apple.backupd-auto -k Time ge -30m | tail -n 1"

# trim newlines
alias tn='tr -d "\n"'

# list TODO/FIX lines from the current project
alias todos="ack -n --nogroup '(TODO|FIX(ME)?):'"

# create a Taskpaper todo file in the current folder
alias tp='touch todo.taskpaper && open -a "Taskpaper" todo.taskpaper'

# interactive fasd
alias zi="fasd -e cd -i"

# command to show the last N commands from the history
function last
{
    fc -l -$1 -1
}
