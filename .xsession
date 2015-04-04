TZ='Europe/Kaliningrad'; export TZ

xsetroot -cursor_name left_ptr
xsetroot -solid '#000000'              

errorlog="$HOME/.xsession-errors"
if ( /bin/cp /dev/null "$errorlog" 2> /dev/null )
then
    /bin/chmod 600 "$errorlog"
    exec > "$errorlog" 2>&1
	break
fi                        

if [  -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi
                                  

setxkbmap -model pc105
#setxkbmap -layout us,ru
#setxkbmap -option grp:rctrl_toggle
setxkbmap -option terminate:ctrl_alt_bksp

#change mod4 to capslock
xmodmap -e "clear Lock"
xmodmap -e "keycode 66 = Escape" 

#claws-mail &
#pulseaudio -D &
#volti &
urxvtd -q -o -f &
skype &
dunst &
i3
