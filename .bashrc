#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# colors for PS1
PURP="\[$(tput setaf 13)\]"
CYAN="\[$(tput setaf 14)\]"
ORNG="\[$(tput setaf 11)\]"
RESET="\[$(tput sgr0)\]"

# pee ess
#PS1='[\u@\h \W]\$ '
PS1="╭──[${PURP}\u${RESET}${ORNG}@${RESET}${CYAN}\h${RESET}]\n╰─> \W \$ "
PS2='> '

# alias's
alias ls='exa -la'
alias ..='cd ..'
alias sudo='doas'
alias sx='startx'
alias cl='clear'
alias rm='trash-put'
alias cat='bat'
alias shtdwn='shutdown -h now'

alias sbrc='source ~/.bashrc'
alias vbrc='vim ~/.bashrc'

alias lolcow='fortune | cowsay | lolcat'
alias matrix='unimatrix -c magenta -s 90 -l o'

alias fuck='doas $(history -p !!)'

alias scanhome='clamscan -r -i -l ~/Documents/clamscanlog /home'
alias scanall="doas clamscan -r -i -l ~/Documents/clamscanlogall --exclude-dir='^/sys|^/dev' /"

alias uofl='cd ~/Documents/UofL'
alias todo='vim ~/Documents/UofL/todo'

alias vpn='nordvpn connect'
alias vpnus='nordvpn connect United_States'
alias vpnca='nordvpn connect Canada'
alias vpnuk='nordvpn connect United_Kingdom'
alias vpnau='nordvpn connect Australia'
alias vpnst='nordvpn status'
alias vpndc='nordvpn disconnect && nordvpn rate 5'

alias pwtop='doas powertop'

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
