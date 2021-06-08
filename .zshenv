# ZSH environment configuration.

# Add .scripts to PATH.
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"

# Firefox
export BROWSER='firefox'

# emacs
export EDITOR='emacs'

# Ghidra
export GHIDRA_INSTALL_DIR='/usr/share/ghidra'

# Localization
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Alacritty
export TERMINAL=alacritty
export TERM="xterm-256color"

# Fix broken fonts in Java applications.
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"

# GPG
export GPG_TTY=$(tty)

# Colorize man pages.
export PAGER=less
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-

# Cargo
export PATH=$HOME/.cargo/bin:$PATH

# pip
export PATH=$HOME/.local/bin:$PATH

# DevkitPro
export DEVKITPRO='/opt/devkitpro'
export DEVKITARM='$DEVKITPRO/devkitARM'
export DEVKITPPC='$DEVKITPRO/devkitPPC'
