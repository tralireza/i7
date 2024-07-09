# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$PATH:~/.local/bin
export PS1="\h:\w \\$ "
export PKG_CONFIG_PATH=/usr/local/share/pkgconfig:/usr/local/lib64/pkgconfig:/usr/local/lib/pkgconfig

alias ls='ls -aF --color'

if [ -z "$DISPLAY" ] && [ "${XDG_VTNR:-0}" -eq 1 ]; then
  ###echo Staring X ...
  exec startx -- :0 -nocursor &>/dev/null
fi
