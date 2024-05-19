alias ..="cd .."

alias c="clear"
alias q="exit"

alias ls="exa --color=auto --icons"
alias l="ls -l"
alias la="ls -la"
alias lt="ls --tree"

alias cat="bat --color=auto --plain"
alias grep="grep --color=auto"

alias fzf="fzf --preview='~/.config/fzf/fzf-preview.sh {}'"
alias feh="feh -B #232634"

alias record='wf-recorder -g "$(slurp)" -f ~/Videos/records/$(date "+%Y%m%d%H%M%S").mkv'

alias smuggler="python ~/tools/smuggler/smuggler.py"
alias sf="python ~/tools/SecretFinder/SecretFinder.py"
