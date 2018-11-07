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
# ...but give us easy access to the real `rm` command
alias rmm "command rm"

# ls better
alias l "ls -halp"
alias la "ls -aF"
alias ld "ls -ld"
alias ll "ls -l"
alias lt "and pwd; and set_color green; and echo '------NEWEST--'; and set_color normal; and ls -At1; and set_color red; and echo '------OLDEST--'; and set_color normal"
alias ltr "and pwd; and set_color red; and echo '------OLDEST--'; and set_color normal; and ls -Art1; and set_color green; and echo '------NEWEST--'; and set_color normal"

# bat is better than `cat` or `less`
alias cat "bat"
alias less "bat"

# apps
alias e "code"
# alias e "mate"
# alias e "subl"
# alias e "atom"
alias e. "e ."
alias ee "e ."
# alias tt "gittower ." # Tower
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
alias amend "git commit --amend --no-edit" # amends to last commit and reuses last commit message
alias g "git"
alias g- "git checkout -" # check out the branch you were just on
alias gb "git branch"
alias gc "git commit"
alias gcm "git commit -v -m" # usage: gcm 'this is my commit message'
alias gco "git checkout"
alias gd "git checkout develop"
alias gdd "git diff"
alias gf "git fetch; and git remote prune origin"
alias gfd "gf; and grod"
alias gff "git fetch"
alias gfr "gf; and grom"
alias gk "git difftool" # open diffs in Kaleidoscope
alias gl "git log"
alias gm "git checkout master"
alias grd "git rebase develop"
alias grm "git rebase master"
alias grod "git rebase origin/develop"
alias grom "git rebase origin/master"
alias gs "git status"
alias pull "git pull"
alias push "git push"

# helpers
alias doh "history delete (history -n 1 | tr -s ' ' \n)"
alias h "history"
alias hd "history delete"
alias me "echo (whoami)@(hostname)"
alias oops "history delete (history -n 1 | tr -s ' ' \n)"
alias ax "chmod a+x"
# Reset Finder view settings
alias refreshfinder "sudo find / -name .DS_Store -delete; killall Finder"
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
# top
alias cpu "top -o cpu"
alias mem "top -o rsize"
# copy the working directory path
alias cpwd "pwd | tr -d '\n' | pbcopy"
# Get your current public IP
alias ip "ipconfig getifaddr en0; and curl ipv4.icanhazip.com; and curl ipv6.icanhazip.com"
# recursively delete Dropbox conflicted files
# TODO: this `find` command fails in fish
alias rmdbc "find . -name *\ \(*conflicted* -exec rm {} \;"
# mute the system volume
alias stfu "osascript -e 'set volume output muted true'"
# time machine log
alias tmlog "syslog -F '\$Time \$Message' -k Sender com.apple.backupd-auto -k Time ge -30m | tail -n 1"
# create a Taskpaper todo file in the current folder
alias tp "touch todo.taskpaper; and open -a 'Taskpaper' todo.taskpaper"
# git status telling you files have `typechange`s?
alias fixtc "git status | grep typechange | awk '{print $2}' | xargs git checkout"

## default browser: These depend on https://github.com/kerma/defaultbrowser
# sets Safari Tech Preview as the default browser
alias bss "defaultbrowser safaritechnologypreview"
# sets Firefox as the default browser
alias bff "defaultbrowser firefox"
# sets Chrome as the default browser
alias bcc "defaultbrowser chrome"

####################
#  AdHoc specific  #
####################
alias ad "cd ~/adhoc"
alias vw "cd ~/adhoc/vets-website"
