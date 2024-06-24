#xclock -bg black -fg yellow -hd darkred -geometry 1280x720+64+64 -norender -update 1 &

glxinfo| head -32
xset s 0 0 && xset s noexpose && xset s noblank && xset dpms 0 0 0 && xset -dpms

#xload -bg black -fg darkgray -g 1280x128+64+768 -update 3 -jumpscroll 1 -nolabel &
#LC_ALL=C xclock -d -update 1 -geometry 1280x64+64+896 -norender -bd black -bg black -fg yellow -fn '-adobe-times-medium-r-normal--34-240-100-100-p-170-iso8859-1' -strftime "%A %B %e  %l:%M:%S %P   %Z@%j.%W" &

xlogo -fg yellow -bg black -g 64x64+8+8
