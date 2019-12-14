#!/bin/sh
xbps-query -Rs "" | cut --delimiter " " --fields 1-2 | fzf -m --preview 'xbps-query -R {2}' | xargs -ro sudo xbps-install
