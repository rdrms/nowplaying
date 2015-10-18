#!/bin/bash

#set our variables
mpdnp="$(/usr/local/bin/mpc | grep -)"
spotifynp="$($HOME/scripts/SpotifyControl info)"
foo=0
foo2=0

/usr/local/bin/mpc | grep 'playing' &> /dev/null
if [ $? == 0 ]; then
	echo $mpdnp
else 
	foo=1
fi


$HOME/scripts/SpotifyControlOriginal info | grep 'playing' &> /dev/null
if [ $? == 0 ]; then
	echo $spotifynp
else 
	foo2=1
fi

if [ $foo -eq 1 ] && [ $foo2 -eq 1 ]; then
	echo "Not Playing"
fi
