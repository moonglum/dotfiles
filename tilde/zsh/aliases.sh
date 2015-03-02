## Aliases and One-Line Functions

# Fast one directory up
alias ..='cd ..'

# One-letter shortcuts
alias l='ls -al'
alias o='open'
alias o.='open .'
alias m='make'
alias g='bundle exec guard'
alias b='bundle'
alias be='bundle exec'
alias j='jump'
alias e='emacsclient -t'

# Open files with Mac OS X applications
function chrome() { open -a \"Google Chrome\" $@ }
function safari(){ open -a Safari $@ }
function marked(){ open -a "Marked 2" $@ }
function pm(){ open -a Pixelmator $@ }
function preview(){ open -a Preview $@ }

# Get current public IP
alias ip="curl icanhazip.com"

# Github-flavored Git
function git(){hub $@}

# ccached gcc builds
export CC="ccache gcc"
export CXX="ccache g++"

# Ruby-flavored Man
# function man() { gem man -s $@ }

# Run Rubocop with the configuration used by Hound
alias hound='rubocop -c .hound.yml'

# mkdir and cd to it (from oh-my-zsh)
function mcd() { mkdir -p "$1" && cd "$1"; }

# Speed Test
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

# Lossy local network
alias lossy='sudo ipfw pipe 1 config bw 10bits && sudo ipfw add 10 pipe 1 tcp from any to me 80'
alias halflossy='sudo ipfw pipe 2 config bw 2000bits && sudo ipfw add 10 pipe 2 tcp from any to me 80'
alias delossy='sudo ipfw delete 10'

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
