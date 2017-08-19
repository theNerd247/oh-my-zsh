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
	if [[ $1 == "-s" ]]; then
		git clone -b $(default $3 master) git@github.com:$2.git
	else
		git clone -b $(default $2 master) https://github.com/$1.git
	fi
}

alias ghcl=githubClone

# custom stack aliases
alias ste="stack exec" 
alias stt="stack test"
alias stta="stack test --test-arguments $@"

function stta() { stack test --test-arguments "$@";}

function pdfex() 
{
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=$1 -dLastPage=$2 -sOutputFile="$(basename -s .pdf ${3})_p${1}-p${2}.pdf" ${3}
}

function cmb()
{
	rm -r build
	mkdir build
	cd build
	cmake ..
}
