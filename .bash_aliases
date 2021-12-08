# dwulf aliases; because yes, I am that lazy :-)

# Manage packages
# agi [packagename]
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias acs='apt-cache search'

# Manage files and folders
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -i'
alias la='ls -alh'

# Navigating the system
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias desktop='cd ~/Desktop'
alias music='cd ~/Music'
alias videos='cd ~/Videos'
alias pictures='cd ~/Pictures'
alias dwulfapp='cd ~/dwulf_app'
alias psets='cd ~/psets'
alias gitcoingas='cd ~/GitcoinGas'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Other useful aliases
alias e='exit'
alias s='sudo'
alias c='clear'
alias shutdown='sudo shutdown now'    #requires root password, disable it by "sudo chmod u+s /sbin/shutdown"
alias restart='sudo shutdown –r now'      #requires root password, disable it by "sudo chmod u+s /sbin/shutdown"
alias suspend='sudo pm-suspend'
alias lock='gnome-screensaver-command --lock'
alias mounted='mount | column –t'

# Perma Update
alias update='sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y'
