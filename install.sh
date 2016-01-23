shl=$(chsh -l | grep zsh | head -1)

if [[ -z $shl ]]; then
	echo "Could not change the shell to zsh!"
fi

chsh -s "$shl"
