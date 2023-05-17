# dwulf aliases; because yes, I am that lazy :-)

# Manage packages

# Alias for installing packages using apt-get
alias agi='sudo apt-get install'

# Alias for removing packages using apt-get
alias agr='sudo apt-get remove'

# Alias for updating package lists
alias agu='sudo apt-get update'

# Alias for searching package cache
alias acs='apt-cache search'

# Manage files and folders

# Alias for copying files with interactive confirmation
alias cp='cp -iv'

# Alias for moving files with interactive confirmation
alias mv='mv -iv'

# Alias for removing files with interactive confirmation
alias rm='rm -i'

# Alias for listing files and directories with detailed information
alias la='ls -alh'

# Navigating the system

# Alias for changing directory to ~/Documents
alias documents='cd ~/Documents'

# Alias for changing directory to ~/Downloads
alias downloads='cd ~/Downloads'

# Alias for changing directory to ~/Desktop
alias desktop='cd ~/Desktop'

# Alias for changing directory to ~/Music
alias music='cd ~/Music'

# Alias for changing directory to ~/Videos
alias videos='cd ~/Videos'

# Alias for changing directory to ~/Pictures
alias pictures='cd ~/Pictures'

# Alias for changing directory to ~/dwulf_app
alias dwulfapp='cd ~/dwulf_app'

# Alias for changing directory to ~/psets
alias psets='cd ~/psets'

# Alias for changing directory to ~/GitcoinGas
alias gitcoingas='cd ~/GitcoinGas'

# Alias for moving up one directory
alias ..='cd ..'

# Alias for moving up two directories
alias ...='cd ../..'

# Alias for moving up three directories
alias ....='cd ../../..'

# Other useful aliases

# Alias for exiting the current shell or terminal
alias e='exit'

# Alias for running commands with superuser (root) privileges
alias s='sudo'

# Alias for clearing the terminal screen
alias c='clear'

# Alias for immediate system shutdown
alias shutdown='sudo shutdown now'    # Requires root password, disable it by "sudo chmod u+s /sbin/shutdown"

# Alias for immediate system restart
alias restart='sudo shutdown -r now'      # Requires root password, disable it by "sudo chmod u+s /sbin/shutdown"

# Alias for system suspend
alias suspend='sudo pm-suspend'

# Alias for locking the screen
alias lock='gnome-screensaver-command --lock'

# Alias for displaying mounted filesystems
alias mounted='mount | column -t'

# Perma Update

# Alias for performing a complete system update
alias update='sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y'
