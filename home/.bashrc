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

#enable Google API keys for Chromium
#export GOOGLE_API_KEY="AIzaSyA7gvFXQHg3r13FcCq8nQIGL6wiGBiDSTE"
#export GOOGLE_DEFAULT_CLIENT_ID="936940932425-dbdesdr7vqs0enej92q3bbrnoa82tddq.apps.googleusercontent.com"
#export GOOGLE_DEFAULT_CLIENT_SECRET="PbXYxRqlpr3-Io5M-SlLCSxV"

#use CCASHE
#export PATH=~/bin:$PATH
#export USE_CCACHE=1
# instal ccache erst

# common aliases
alias ls='ls --color=auto'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'
alias sf='screenfetch'
alias obclass='obxprop | grep "^_OB_APP"'
alias teamspeak='sh ~/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh'

# [void linux specific]
if [ $HOSTNAME = "void-pc" ] || [ $HOSTNAME = "void-netbook" ]; then
	# xbps aliases
	alias install='sudo xbps-install -S'
	alias update='sudo xbps-install -Syu'
	alias remove='sudo xbps-remove'
	alias search='sudo xbps-query -Rs'
	alias kpurge='sudo vkpurge rm all'

	# Android aliases
	alias android='sh /home/gee/android-sdk-linux/tools/android'
elif [ $HOSTNAME = "arch-pc" ]; then
	# system cleanup tools
	alias cleansys='sudo pacman -Rs `pacman -Qqtd | grep -Fv -f <(pacman -Qqtdm)` && sudo pacman -Rs $(pacman -Qqtdm)'
	alias lostfiles='sudo lostfiles cat > ~/lostfiles.txt && leafpad ~/lostfiles.txt'
elif [ $HOSTNAME = "gentoo-pc" ]; then
	# emerge aliases
	alias emerge='sudo emerge'
	alias emergedeps='sudo emerge --ask --changed-use --deep @world' #emerges missing dependencies
	alias reemerge='emerge -ave system && emerge -ave world' ##reemerge system & world
	alias cleansys='emerge -av --depclean && eclean -d distfiles' #remove orphans & old packages
	alias updatesys='emerge -DuvaN world && revdep-rebuild'
	alias prelink="sudo prelink -afmR"

	# kernel aliases
	alias listtkernel='sudo eselect kernel list'
	alias newkernel='sudo genkernel --gconfig all --no-zfs' #compile a new kernel
	alias testkernel='sudo genkernel --gconfig all --kername test --no-zfs' #compile a new kernel
	alias updatekernel='sudo genkernel --oldconfig --gconfig all --no-zfs' #use old kernel config for new kernel

	#config file aliases
	alias pu='sudo leafpad /etc/portage/package.use'
	alias mc='sudo leafpad /etc/portage/make.conf'
fi

# Custom bash prompt via kirsle.net/wizards/ps1.html
PS1="\[$(tput setaf 2)\]\u \[$(tput setaf 1)\]\W\[$(tput sgr0)\]"
