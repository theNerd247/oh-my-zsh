alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias als="alias | grep $@"
alias vimnrd="vim +NERDTree"
alias copy="xclip -sel 'clipboard' -i"
alias newterm="/home/noah/scripts/newterm"
alias octave="octave --no-gui"
alias sus="sudo systemctl suspend"

#custom git aliases
function default()
{
	if [[ -z $1 ]]; then
		echo $2
	else
		echo $1
	fi

}

function githubClone()
{
	git clone -b $(default $2 master) https://github.com/$1.git
}

alias ghcl=githubClone
