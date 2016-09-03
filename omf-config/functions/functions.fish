# ls better
function l
    ls -hal
end
function la
    ls -aF
end
function ld
    ls -ld
end
function ll
    ls -l
end
function lt
    ls -At1 and echo "------Oldest--"
end
function ltr
    ls -Art1 and echo "------Newest--"
end

function me
    echo (whoami)@(hostname)
end
function wifi
    networksetup -setairportpower en0
end
function refreshfinder
    sudo find / -name .DS_Store -delete; killall Finder
end

# apps
function e
    # subl $argv
    atom $argv
end
function e.
    e .
end
function ee
    e .
end
function tt
    stree
end

# common directories
function w
    cd ~/womply
end
function aps
    cd ~/Library/Application\ Support
end
function bin
    cd ~/bin
end
function cf
    cd ~/codefellows
end
function db
    cd ~/Dropbox
end
function desk
    cd ~/Desktop
end
function down
    cd ~/Downloads
end
function kar
    cd ~/Dropbox/karabiner
    e . core.xml
end
function p
    cd ~/projects
end
function pcs
    cd ~/pcs
end
function pp
    cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User and subl .
end
function work
    cd ~/projects-work
end
###
# The function and alias below are from
# [Brett Terpstra](http://brettterpstra.com/2013/02/09/quick-tip-jumping-to-the-finder-location-in-terminal/)
###
# cd to the path of the front Finder window
# cdf() {
#     target `osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
#     if [ "$target" !  "" ]; then
#         cd "$target"; pwd
#     else
#         echo 'No Finder window found' >&2
#     fi
# }
# open current path in Finder
function f
    open -a Finder ./
end

# Utility
# export EDITOR "/usr/local/bin/editor.sh"
# export VISUAL "/usr/local/bin/editor.sh"
# export EDITOR "vim"
# export VISUAL "vim"
# function env
#     subl ~/bin/dotfiles/zshrc ~/bin/oh-my-zsh-custom/
# end
# function ea
#     subl -w ~/bin/dotfiles/bash/setes and src
# end
# function ee
    # subl -w ~/bin/dotfiles/bash/config and src
# end
function ax
    chmod a+x # $ ax my-script.sh
end

function zzz
    pmset -x sleepnow
end

function newdir
    mkdir $argv
    cd $argv
end

# git
function git
    hub $argv
end
function g
    git status
end
function pull
    git pull
end
function clone
    git clone $argv
end
function push
    git push $argv
end
function gf
    git fetch
end
function gd
    git diff | subl -w
end
function gdd
    git difftool
end
function gc
    git commit -v
end
function gca
    git commit -v -a
end
function gcm
    git commit -v -a -m $argv
end
function gb
    git branch $argv
end
function gco
    git checkout $argv
end
function gm
    git checkout master
end
function grom
    git rebase origin/master
end
function grod
    git rebase origin/develop
end
function gfr
    gf; grom
end

# Remove git from a project
function ungit
    "find . -name '.git' -exec rm -rf {} \;"
end
# Remove svn from a projects
function unsvn
    "find . -name '.svn' -exec rm -rf {} \;"
end

###
# Everything below is from [Brett Terpstra](http://brettterpstra.com/2013/03/31/a-few-more-of-my-favorite-shell-setes/?utm_source feedburner&utm_medium feed&utm_campaign Feed%3A+BrettTerpstra+%28Brett+Terpstra%29)
###
#copy output of last command to clipboard
function cl
    fc -e -|pbcopy
end

# top
function cpu
    top -o cpu
end
function mem
    top -o rsize
end # memory

# copy the working directory path
function cpwd
    pwd|tr -d "\n"|pbcopy
end

# DNS (with update thanks to @blanco)
function flush
    sudo killall -HUP mDNSResponder
end
function flush
    sudo killall -HUP mDNSResponder
end

# share history between terminal sessions
function he
    history -a
end # export history
function hi
    history -n
end # import history

# Get your current public IP
function ip
    curl ipv4.icanhazip.com and curl ipv6.icanhazip.com
end

# recursively delete Dropbox conflicted files
function rmdbc
    find . -name *\ \(*conflicted* -exec rm {} \;
end

# mute the system volume
function stfu
    osascript -e 'set -x volume output muted true'
end

# time machine log
function tmlog
    syslog -F '\$Time \$Message' -k Sender com.apple.backupd-auto -k Time ge -30m | tail -n 1
end

# trim newlines
function tn
    tr -d "\n"
end

# list TODO/FIX lines from the current project
function todos
    ack -n --nogroup '(TODO|FIX(ME)?):'
end

# create a Taskpaper todo file in the current folder
function tp
    touch todo.taskpaper and open -a "Taskpaper" todo.taskpaper
end

# interactive fasd
function zi
    fasd -e cd -i
end

function ssh-fingerprint
    ssh-keygen -E md5 -lf $argv
end

function ical
    set -l days 0
    if test $argv[1]
        set days $argv[1]
    end
    icalBuddy -sc -f -n eventsToday+$days
end

# command to show the last N commands from the history
# function last
# {
#     fc -l -$1 -1
# }

# list only hidden files
# function hidden
# {
#   ls -a $@ | grep '\.'
# }
