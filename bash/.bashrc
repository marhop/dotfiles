# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# Prompt title.
PS1='\[\e[31m\]■\[\e[00m\] '

# PATH variable.
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
[ -f "/home/martin/.ghcup/env" ] && source "/home/martin/.ghcup/env"

# Aliases.
alias ls='ls --color=auto'
alias ll='ls -lh'
alias t=tree
alias less='less -F -R'
alias fc='fc -e "vim -c \"set textwidth=0\""'
alias py=python3
alias et='exiftool -a -U -s -e -G0:1'
alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'

# Recursive globbing with ** pattern.
shopt -s globstar

# History.
shopt -s histappend
HISTCONTROL=ignoreboth

# Tab completion. Requires bash-completion package.
. /usr/share/bash-completion/bash_completion

# Update window size after each command.
shopt -s checkwinsize
