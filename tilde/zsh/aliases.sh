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
alias j='jump'

# Open files with Mac OS X applications
function chrome() { open -a \"Google Chrome\" $@ }
function safari(){ open -a Safari $@ }
function marked(){ open -a Marked $@ }
function pm(){ open -a Pixelmator $@ }
function preview(){ open -a Preview $@ }

# Reload zshrc
alias reload="source ~/.zshrc"

# Copy output of last command to clipboard
alias copy_to_pastebord="fc -e - | pbcopy"

# Get current public IP
alias ip="curl icanhazip.com"

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

# Trolling myself
alias ack='echo "Use ag "'
alias c='echo "Use j c"'
alias n='echo "Use j n"'
alias dropbox='echo "Use j dropbox"'
alias desktop='echo "Use j desktop"'

# Jump
# Inspired by the Oh-My-ZSH Jump Plugin
export MARKPATH=$HOME/.marks

# jump FOO: jump to a mark named FOO
jump() { cd -P "$MARKPATH/$1" }
_jump() { _files -W "$MARKPATH/$1" }
compdef _jump jump

# mark FOO: create a mark named FOO
mark() { mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1" }

# unmark FOO: delete a mark
unmark() { rm -i "$MARKPATH/$1" }

# marks: lists all marks (see: functions)
