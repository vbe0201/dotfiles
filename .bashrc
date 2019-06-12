# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable ctl-s and ctl-q which pause stdin
stty -ixon

# Auto cd into directory
shopt -s autocd

# Ignore duplicates in .bash_history
export HISTCONTROL=ignoredups

# Fix window size after each command
shopt -s checkwinsize

# Colorize grep
alias grep='grep --color=auto'

# color cat - print file with syntax highlighting
alias ccat='highlight --out-format=ansi'

# More colors
use_color=true

# Colorize bash prompt
PS1='[\h \W] '

# Aliases
alias cp='cp -i'                                            # Confirm overwrite
alias df='df -h'                                            # Human readable
alias ls='ls --group-directories-first --color=auto -a'     # Show hidden files & colorize
alias free='free -m'                                        # Size in MB
alias more=less                                             # To see _more_, we use less
alias pacbloat='pacman -Qtdg'
alias packill='pacman -Rcns'
alias pacbig="pacman -Qi | awk '/^Name/{name=\$3} /^Installed Size/{print \$4\$5, name}' | sort -hr | sed '20q'"

# Shorter programs
alias r=ranger
alias pdf=zathura
alias g=git
alias v=vim
alias lf=leafpad

# YouTube aliases
alias yt='youtube-viewer'                    # View youtube video
alias ytdl='youtube-dl --add-metadata -ic'   # Download video
alias yta='ytdl -x -f bestaudio/best'        # Download only audio

# Travis Gem (gem install travis)
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
