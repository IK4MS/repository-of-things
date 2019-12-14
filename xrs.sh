#!/bin/sh
xbps-query -l | cut --delimiter " " --fields 1-2 | fzf -m --preview 'xbps-query -R {2}' | cut --delimiter " " --fields 2 | xargs -ro sudo xbps-remove
