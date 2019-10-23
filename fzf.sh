#!/bin/sh

IFS=:; find $PATH -maxdepth 1 -executable -type f -printf '%f\n' | fzf --cycle --tiebreak=begin,length,index --layout=reverse --border --color=light,fg:#151414,hl:#BA4B3D,bg+:#BA4B3D | xargs swaymsg exec
