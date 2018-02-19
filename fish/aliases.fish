# jump up directories faster
# `..` works as `cd ..` out of the box. Thanks Fish shell!
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."
# From the Fish docs:
# In fish versions prior to 2.5.0 it was possible to create a function named -
# that would do cd -. Changes in the 2.5.0 release included several bug fixes
# that enforce the rule that a bare hyphen is not a valid function (or variable)
# name. However, you can achieve the same effect via an abbreviation:
abbr -a -- - 'cd -'

# safer rm
alias rm "trash"

# ls better
alias l "ls -halp"
alias la "ls -aF"
alias ld "ls -ld"
alias ll "ls -l"
alias lt "and pwd; and set_color green; and echo '------NEWEST--'; and set_color normal; and ls -At1; and set_color red; and echo '------OLDEST--'; and set_color normal"
alias ltr "and pwd; and set_color red; and echo '------OLDEST--'; and set_color normal; and ls -Art1; and set_color green; and echo '------NEWEST--'; and set_color normal"

# apps
alias e "code"
alias e. "e ."
alias ee "e ."
# alias tt "stree ." # SourceTree
alias tt "fork status" # Open current repo in Fork's commit view

# common directories
alias aps "cd ~/Library/Application\ Support"
alias bin "cd ~/bin"
alias db "cd ~/Dropbox"
alias desk "cd ~/Desktop"
alias down "cd ~/Downloads"
alias kar "cd ~/Dropbox/karabiner; and e . core.xml"
alias p "cd ~/projects"
alias pp "cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User; and subl ."
alias work "cd ~/projects-work"

# git helpers
alias git "hub"
alias g "git"
alias gs "git status"
alias gl "git log"
alias gff "git fetch"
alias gf "git fetch; and git remote prune origin"
alias gb "git branch"
alias gd "git checkout develop"
alias gm "git checkout master"
alias gc "git commit"
alias gco "git checkout"
alias g- "git checkout -"
alias gdd "git diff"
alias gk "git difftool" # open diffs in Kaleidoscope
alias gcm "git commit -v -m"
alias grm "git rebase master"
alias grd "git rebase develop"
alias grom "git rebase origin/master"
alias grod "git rebase origin/develop"
alias gfr "gf; and grom"
alias gfd "gf; and grod"
alias pull "git pull"
alias push "git push"
alias amend "git commit --amend --no-edit" # amends to last commit and reuses last commit message

# helpers
alias h "history"
alias hd "history delete"
alias doh "history delete (history -n 1 | tr -s ' ' \n)"
alias oops "history delete (history -n 1 | tr -s ' ' \n)"
alias me "echo (whoami)@(hostname)"
# Reset Finder view settings
alias refreshfinder "sudo find / -name .DS_Store -delete; killall Finder"
alias ax "chmod a+x"
alias zzz "pmset sleepnow"
# List all top-level global node modules
alias ng "npm list -g --depth=0"
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

###################
# Womply specific #
###################
alias w "cd ~/womply"
alias nav "cd ~/womply/gmd-nav"
alias wcjs "cd ~/womply/womply-common-js"
alias et "cd ~/womply/womply-email-templates"

alias insights "cd ~/womply/gmd-insights"
alias bizshield "cd ~/womply/bizshield-ui"
alias customerpulse "cd ~/womply/customer-analytics-ui"
alias customeranalytics "cd ~/womply/customer-analytics-ui"
alias customerdirectory "cd ~/womply/customer-directory-ui"
alias marketingautomation "cd ~/womply/marketing-automation-ui"
alias customerengagement "cd ~/womply/marketing-automation-ui"
alias repdef "cd ~/womply/angular-reputation-defense-ui"
alias launchpad "cd ~/womply/launchpad-ui"
alias vault "cd ~/womply/vault-ui"
alias feedback "cd ~/womply/feedback-ui"
alias ads "cd ~/womply/ads-ui"
alias messenger "cd ~/womply/messenger-ui"
alias signup "cd ~/womply/signup-ui"

alias releasebranch "git checkout -b release_(date +'%Y%m%d%H%M%S') develop"
