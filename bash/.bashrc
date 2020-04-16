# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# Prompt and xterm title.
PS1='\[\e[01;32m\]\u@\h:\[\e[01;34m\]\W\[\e[00m\]\$ '
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;\u@\h: \W\a\]$PS1"
        ;;
    *)
        ;;
esac

# PATH variable.
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Aliases.
alias ls='ls --color=auto'
alias ll='ls -lh'
alias t=tree
alias grep='grep --color=auto'
alias fc='fc -e "vim -c \"set textwidth=0\""'
alias py=python3

# History.
shopt -s histappend
HISTCONTROL=ignoreboth

# Tab completion. Requires bash-completion package.
. /usr/share/bash-completion/bash_completion
[ -x "$(command -v stack)" ] && eval "$(stack --bash-completion-script stack)"

# Update window size after each command.
shopt -s checkwinsize
