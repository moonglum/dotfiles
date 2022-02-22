set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# set the default editor to vim
set -x EDITOR 'vim'

# use fdfind as the file list for fzf
set -x FZF_DEFAULT_COMMAND "fdfind --type file"

# Ruby
set -x PATH $HOME/.gem/ruby/3.0.0/bin $PATH

# Python
set -x PATH $HOME/.local/bin $PATH

# Go
set -x GOPRIVATE bitbucket.org/advance52
set -x GOPATH $HOME/.go
set -x PATH $HOME/.go/bin $PATH

# Rust
set -x PATH $HOME/.cargo/bin $PATH

# asdf
source ~/.asdf/asdf.fish

# direnv
eval (direnv hook fish)

# aliases
alias s="start"
alias j="jump"
alias l="ls -al"
alias electric-monk="each-project gitkeeper"
