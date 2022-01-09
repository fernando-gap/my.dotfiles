#
# ~/.bashrc
#

# set output to vi mode
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# colors for PS1
RESET="$(tput sgr0)"
GREEN="$(tput setaf 2)"
BOLD="$(tput bold)"
MAGENTA="$(tput setaf 5)"
WHITE="$(tput setaf 7)"
RED="$(tput setaf 1)"
ITALIC="$(tput sitm)"

# PS1 this will do not be saved on .dotfiles repo
PS1='\[$BOLD\]\[$MAGENTA\]\u \[$WHITE\]\[$BOLD\]on\[$RESET\] \[$ITALIC\]\[$RED\]\w \[$RESET\]\[$BOLD\]\[$GREEN\]> \[$RESET\]'

export LESSHISTFILE="${XDG_CONFIG_HOME}/less/history"
export LESSKEY="${XDG_CONFIG_HOME}/less/keys"


# manage dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
config config status.showUntrackedFiles no


# aliases for ls command
alias ls='ls --color=auto'
alias la='ls -A1Xr'
alias ll='ls -lhas'

# set sudo alias to s
alias s='sudo'

# easy navigation on directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# if you're in a place too far away.
up(){
	local d=""
	limit=$1
	for ((i=1 ; i <= limit ; i++))
	do
		d=$d/..
	done
	d=$(echo $d | sed 's/^\///')
	if [ -z "$d" ]; then
		d=..
	fi
	cd $d
}



#colors for man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
