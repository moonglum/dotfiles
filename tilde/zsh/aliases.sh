## Aliases and One-Line Functions

# Necessary
alias please='sudo'

# Fast one directory up
alias ..='cd ..'

# One-letter shortcuts
alias l='ls -al'
alias o='open'
alias m='make'
alias g='bundle exec guard'
alias b='bundle'

# Open files with Mac OS X applications
alias chrome="open -a \"Google Chrome\""
alias safari="open -a Safari"
alias marked="open -a Marked"
alias pm="open -a Pixelmator"

# Reload zshrc
alias reload="source ~/.zshrc"

# Copy output of last command to clipboard
alias copy_to_pastebord="fc -e - | pbcopy"

# Get current public IP
alias ip="curl icanhazip.com"

# Fix for REPLs and Editors without Readline
alias csi='rlwrap csi '

# Github-flavored Git
function git(){hub $@}

# Ruby-flavored Man
alias man="gem man -s"

# iTunes Control
alias play='osascript -e "tell application \"iTunes\" to play"'
alias pause='osascript -e "tell application \"iTunes\" to pause"'

# mkdir and cd to it (from oh-my-zsh)
function mcd() { mkdir -p "$1" && cd "$1"; }

# Ruby Development
function current-version() { gem list -r $1$ }

# Speed Test
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

# Code Directory
alias c='nocorrect c'
c() { cd ~/Code/$1; }
_c() { _files -W ~/Code -/; }
compdef _c c
