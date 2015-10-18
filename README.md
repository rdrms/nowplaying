# nowplaying
Now playing script for Textual, queries mpd and Spotify and returns the currently playing song if either is playing, otherwise returns "Not Playing".  I also use playing.sh in my tmux statusbar.

Requires mpc, install via brew.

Put the script playing, SpotifyControlOriginal and SpotifyControl in your ~/scripts/ directory if it exists, it's handy but not necessary that they're in your $PATH.  You'll have to modify the location inside playing.sh and np.scpt if you place it elsewhere.  Oh, and be sure to make them executable (chmod +x <filename>).


Put np.scpt in your Textual Custom Scripts/Addons location.  On my machine, this was located at:
~/Library/Group Containers/com.codeux.apps.textual/Library/Application Support/Textual/Custom Scripts/

Simply type "/np" in Textual to output your current song into the active channel.

Heavily indebted to github user dronir for SpotifyControl, which is included both in it's original form, and one that has been modified for the purposes of the script.
