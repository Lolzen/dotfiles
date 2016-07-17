# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# use nano as standard editor
export EDITOR=nano

# common aliases
alias ls='ls --color=auto'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'
alias sf='screenfetch'
alias obclass='obxprop | grep "^_OB_APP"'

# [void linux specific]
if [ $HOSTNAME = "void-pc" ]; then
	# xbps aliases
	alias install='sudo xbps-install -S'
	alias update='sudo xbps-install -Syu'
	alias remove='sudo xbps-remove'
	alias search='sudo xbps-query -Rs'

	# Android aliases
	alias android='sh /home/gee/android-sdk-linux/tools/android'
fi

# Custom bash prompt via kirsle.net/wizards/ps1.html
PS1="\[$(tput setaf 2)\]\u \[$(tput setaf 1)\]\W\[$(tput sgr0)\]"
