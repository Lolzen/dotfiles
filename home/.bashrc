# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

#mpd
export MPD_HOST=/home/gee/.config/.mpd/socket

# use nano as standard editor
export EDITOR=nano

#use CCACHE
# install ccache first
#export PATH=~/bin:$PATH
#export USE_CCACHE=1

# aliases
alias ls='ls --color=auto'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'
alias sf='neofetch'
alias obclass='obxprop | grep "^_OB_APP"'
alias teamspeak='sh ~/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh'
alias discord='APULSE_CAPTURE_DEVICE=plughw:2,0 APULSE_PLAYBACK_DEVICE=plughw:2,0 apulse ~/Discord/Discord'

# xbps aliases
alias install='sudo xbps-install -S'
alias update='sudo xbps-install -Syu'
alias remove='sudo xbps-remove'
alias search='sudo xbps-query -Rs'
alias kpurge='sudo vkpurge rm all'

# switching between python 2/3 (repos still needs python2)
#sudo xbps-alternatives -s python python2

# WoW Addon updater
alias cb='"/home/gee/Games/world-of-warcraft/drive_c/Program Files (x86)/World of Warcraft/_retail_/CurseBreaker"'

# Android aliases
alias android='sh /home/gee/android-sdk-linux/tools/android'

# Custom bash prompt via kirsle.net/wizards/ps1.html
PS1="\[$(tput setaf 2)\]\u \[$(tput setaf 1)\]\W\[$(tput sgr0)\]"
