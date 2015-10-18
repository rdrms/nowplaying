#!/bin/bash

#set our variables
mpdnp="$(/usr/local/bin/mpc | grep -)"
spotifynp="$($HOME/scripts/SpotifyControlModified info)"
foo=0
foo2=0

#check if mpd is playing, if it is return the current song

/usr/local/bin/mpc | grep 'playing' &> /dev/null
if [ $? == 0 ]; then
	echo $mpdnp
else 
	foo=1
fi

#check if Spotify is playing, if it is, return the current song

$HOME/scripts/SpotifyControl info | grep 'playing' &> /dev/null
if [ $? == 0 ]; then
	echo $spotifynp
else 
	foo2=1
fi

#If neither is playing, return "Not Playing."
if [ $foo -eq 1 ] && [ $foo2 -eq 1 ]; then
	echo "Not Playing"
fi
