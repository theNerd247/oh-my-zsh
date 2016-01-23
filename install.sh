shl=$(chsh -l | grep zsh)

if [[ -z $shl ]]; then
	echo "Could not change the shell to zsh!"
fi

chsh -s $shl
