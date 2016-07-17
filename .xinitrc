[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
exec dbus-launch openbox-session
#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
#exec $1

#exec nvidia-settings --load-config-only #load nvidia settings on startup
