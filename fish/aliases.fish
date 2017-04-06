# jump up directories faster
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."
alias cdd "cd -"

# ls better
alias l "ls -hal"
alias la "ls -aF"
alias ld "ls -ld"
alias ll "ls -l"
alias lt "and pwd; and set_color green; and echo '------NEWEST--'; and set_color normal; and ls -At1; and set_color red; and echo '------OLDEST--'; and set_color normal"
alias ltr "and pwd; and set_color red; and echo '------OLDEST--'; and set_color normal; and ls -Art1; and set_color green; and echo '------NEWEST--'; and set_color normal"

# apps
alias e "atom"
alias e. "e ."
alias ee "e ."
alias tt "stree" # SourceTree

# common directories
alias aps "cd ~/Library/Application\ Support"
alias bin "cd ~/bin"
alias cf "cd ~/codefellows"
alias db "cd ~/Dropbox"
alias desk "cd ~/Desktop"
alias down "cd ~/Downloads"
alias kar "cd ~/Dropbox/karabiner; and e . core.xml"
alias p "cd ~/projects"
alias pcs "cd ~/pcs"
alias pp "cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User; and subl ."
alias work "cd ~/projects-work"

# git helpers
alias git "hub"
alias pull "git pull"
alias push "git push"
alias amend "git commit --amend --no-edit" # amends to last commit and reuses last commit message
alias gf "git fetch"
alias gdd "git diff"
alias gddd "git difftool"
alias gcm "git commit -v -m"
alias gb "git branch"
alias gco "git checkout"
alias gm "git checkout master"
alias gd "git checkout develop"
alias grom "git rebase origin/master"
alias grod "git rebase origin/develop"
alias gfr "gf; and grom"
alias gl "git log"

# helpers
alias me "echo (whoami)@(hostname)"
alias wifi "networksetup -setairportpower en0"
alias refreshfinder "sudo find / -name .DS_Store -delete; killall Finder"
alias ax "chmod a+x"
alias zzz "pmset -x sleepnow"
# get the fingerprint of a public SSH key
alias fingerprint "ssh-keygen -E md5 -lf"
# list TODO/FIX lines from the current project
alias todos "ack -n --nogroup '(TODO|FIX(ME)?):'"
# open current path in Finder
alias f "open -a Finder ./"
# cd into the iCloud Drive
alias idrive "cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
# Remove git from a project
alias ungit "find . -name '.git' -exec rm -rf '{}' \;"
# Remove svn from a projects
alias unsvn "find . -name '.svn' -exec rm -rf '{}' \;"
alias cpu "top -o cpu"
alias mem "top -o rsize"
# copy the working directory path
alias cpwd "pwd | tr -d '\n' | pbcopy"
# Get your current public IP
alias ip "curl ipv4.icanhazip.com; and curl ipv6.icanhazip.com"
# recursively delete Dropbox conflicted files
# TODO: this `find` command fails in fish
alias rmdbc "find . -name *\ \(*conflicted* -exec rm {} \;"
# mute the system volume
alias stfu "osascript -e 'set volume output muted true'"
# time machine log
alias tmlog "syslog -F '\$Time \$Message' -k Sender com.apple.backupd-auto -k Time ge -30m | tail -n 1"
# create a Taskpaper todo file in the current folder
alias tp "touch todo.taskpaper; and open -a 'Taskpaper' todo.taskpaper"

# Womply specific
alias w "cd ~/womply"
alias nav "cd ~/womply/gmd-nav"
alias insights "cd ~/womply/gmd-insights"
alias releasebranch "git checkout -b release_(date +'%Y%m%d%H%M%S') develop"
