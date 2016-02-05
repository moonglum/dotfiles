## Aliases and One-Line Functions

# Fast one directory up
alias ..='cd ..'

# One-letter shortcuts
alias l='ls -al'
alias j='jump'

# Github-flavored Git
function git(){hub $@}

# Run Rubocop with the configuration used by Hound
alias hound='rubocop -c .hound.yml'

# Use nvim instead of vim
alias vim='nvim'

# mkdir and cd to it (from oh-my-zsh)
function mcd() { mkdir -p "$1" && cd "$1"; }

# Jump
# jump FOO: jump to a mark named FOO
# Inspired by the Oh-My-ZSH Jump Plugin

jump() { cd -P "$HOME/.marks/$1" }
_jump() { _files -W "$HOME/.marks/$1" }
compdef _jump jump
