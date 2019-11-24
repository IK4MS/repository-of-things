#!/usr/bin/mksh
{ cmus-remote -Q | grep 'tag title' | sed 's/^..........//' && echo "|" && cmus-remote -Q | grep 'tag artist' | sed 's/^...........//'; } | tr '\n' ' '
