# ~/.profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Set variables
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"
export TERMINAL="urxvt"
export EDITOR="vim"
export BROWSER="firefox"
export READER="zathura"
