setxkbmap -layout hu 
#setxkbmap -variant qwerty
xmodmap -e 'clear lock'
xmodmap -e 'keycode 0x42=Escape'
setxkbmap -option caps:escape &
slstatus &
exec dwm
