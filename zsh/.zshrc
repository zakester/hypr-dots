# Configure pormpt
autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters

# Configure Autocompletion
#autoload -Uz compinit
#compinit
#zstyle ':copmletion:*' menu select

# Neovim as default editor.
export EDITOR="nvim"
export VISUAL="nvim"

# Aliases
alias fzf="fzf --preview='~/.config/fzf/fzf-preview.sh {}'"
alias feh="feh -B #232634"

# Functions
take() {
	mkdir "$@" && cd "$@"
}

super() {
	sudo -i
}

nvim-fzf() {
	p=$(fzf)
	
	# Check if `p` is not empty.
	if [ -n "$p" ]; then
		nvim "$p"
	fi
}

imv-fzf() {
	p=$(fzf)
	
	# Check if `p` is not empty.
	if [ -n "$p" ]; then
		imv "$p"
	fi
}

cd-fzf() {
  current_path=$(pwd)
  cd
  # Using `find` command to filter out some useless dirs like i.e .local, .cache, ...
  p=$(find . -maxdepth 3 -type d -not \( -path "./.local/*" -o -path "./.cargo/*" -o -path "./.cache/*" \) | fzf)
	
	# Check if `p` is not empty.
	if [ -n "$p" ]; then
		cd "$p"
  else
    cd "$current_path"
	fi
}

install() {
	sudo pacman -S "$@"
}
update() {
	sudo pacman -Syu
}
remove() {
	sudo pacman -Rs "$@"
}

# Keybinds
#bindkey -s '^F' 'fzf^M'
bindkey -s '^E' 'nvim-fzf^M' # Edit file.
bindkey -s '^O' 'imv-fzf^M'  # Open Images/GiFs.
bindkey -s '^J' 'cd-fzf^M'   # cd with fzf.
bindkey -s '^R' 'ranger^M'   # Open Ranger.
