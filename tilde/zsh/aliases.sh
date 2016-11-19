## Aliases and One-Line Functions

# Fast one directory up
alias ..='cd ..'

# One-letter shortcuts
alias l='ls -al'
alias j='jump'

# Github-flavored Git
function git(){hub $@}

# mkdir and cd to it (from oh-my-zsh)
function mcd() { mkdir -p "$1" && cd "$1"; }

# Colorize man pages
# from http://boredzo.org/blog/archives/2016-08-15/colorized-man-pages-understood-and-customized
function man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

# Jump
# jump FOO: jump to a mark named FOO
# Inspired by the Oh-My-ZSH Jump Plugin

jump() { cd -P "$HOME/.marks/$1" }
_jump() { _files -W "$HOME/.marks/$1" }
compdef _jump jump
