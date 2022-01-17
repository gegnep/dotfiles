#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
PS2='> '

# custom alias
alias ..='cd ..'

# custom functions
	# slock w/ cowsay
lolslock() {
	slock -m "$(cowsay "$(fortune)" | lolcat -ft)"
}
	# fortune | cowsay | lolcat
lolcow() {
	fortune | cowsay | lolcat
}
	# cd && ls
cl() {
	local dir="$1"
	local dir="${dir:=$HOME}"
	if [[ -d "$dir" ]]; then
		cd "$dir" >/dev/null; ls
	else
		echo "bash: cl: $dir: Directory not found"
	fi
}
	# audio control
volup() {
	amixer set "Master" "unmute"
	amixer set "Master" "5%+"
}

voldn() {
	amixer set "Master" "unmute"
	amixer set "Master" "5%-"
}

voltog() {
	amixer set "Master" "toggle"
}
