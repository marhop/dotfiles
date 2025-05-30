# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# Prompt title.
PS1='\[\e[31m\]■\[\e[00m\] '
PS2='\[\e[31m\]□\[\e[00m\] '

# PATH variable.
PATH="$HOME/.local/bin:$PATH"
[ -f /home/martin/.ghcup/env ] &&
    . /home/martin/.ghcup/env

# Aliases.
alias ll='eza -l --group-directories-first'
[ -x "$(command -v eza)" ] || alias ll='ls -lh --group-directories-first'
alias llt='eza -lT --group-directories-first'
alias less='less -F -R -X -i'
alias rg='rg --smart-case'
alias fc='fc -e "vim -c \"set textwidth=0\""'
alias py=python3
alias et='exiftool -a -U -s -e -G0:1'
alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'

# Tab completion and fuzzy finding. Requires bash-completion and fzf packages.
[ -f /usr/share/bash-completion/bash_completion ] &&
    . /usr/share/bash-completion/bash_completion
eval "$(fzf --bash)"

# Recursive globbing with ** pattern.
shopt -s globstar

# History.
shopt -s histappend
HISTCONTROL=ignoreboth

# Update window size after each command.
shopt -s checkwinsize
