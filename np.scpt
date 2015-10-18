#Place in Texual's custom addons location, modify location of script to suit your machine.

on textualcmd (cmd)
	set mpdsong to do shell script "$HOME/scripts/playing.sh"
	return "/me ♫ " & mpdsong & " ♫"
end textualcmd
