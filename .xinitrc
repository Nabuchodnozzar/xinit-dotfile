# Deant's xinitrc config file

# Usefull settings when X Server is running
	setxkbmap -option terminate:ctrl_alt_bksp
	xmodmap -e 'clear Lock' #ensures you're not stuck in CAPS on mode
	xmodmap -e 'keycode 0x42=Escape' #remaps the keyboard so CAPS LOCK=ESC
#	pgrep redshift &> /dev/null || redshift &> /dev/null &

# Differents DE/WM uncomment your choosen one !
#	exec i3
#	exec startxfce
#	exec gnome-session
#	exec startxfce4
#	exec awesome
#	exec bspwm
#	exec catwm
#	exec cinnamon-session
#	exec dwm
#	exec enlightenment_start
#	exec startede
#	exec startfluxbox
#	exec icewm-session
#	exec jwm
#	exec startkde
#	exec mate-session
#	exec monsterwm
#	exec notion
#	exec openbox-session
#	exec unity
#	exec xmonad

xbindkeys -p

#Usefull settings for IBM/Lenovo ThinkPad or Dell Latitudes with trackpoint
tpset() { xinput set-prop "TPPS/2 IBM TrackPoint" "$@"; }

tpset "Evdev Wheel Emulation" 1
tpset "Evdev Wheel Emulation Button" 2
tpset "Evdev Wheel Emulation Timeout" 200
tpset "Evdev Wheel Emulation Axes" 6 7 4 5
tpset "Device Accel Constant Deceleration" 0.95
