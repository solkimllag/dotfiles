#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# function to get current git branch if any
git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias n='nnn'
alias netctl='sudo netctl'
alias vi='nvim'
alias vim='nvim'
# old prompt
# PS1='[\u@\h \W]\$ ' 
# prompt with git branch if exists
PS1='[\u@\h \W] $(git_branch)\$ '
export GOPATH=~/go
export GOBIN=~/go/bin
export EDITOR=nvim
export PATH="$PATH:$GOBIN"


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000
# add timestamp to bash history
HISTTIMEFORMAT="%F %T "

