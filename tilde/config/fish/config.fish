set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# set the default editor to vim
set -x EDITOR 'vim'

# use fdfind as the file list for fzf
set -x FZF_DEFAULT_COMMAND "fdfind --type file"

# Go
set -x GOPRIVATE bitbucket.org/advance52
set -x GOPATH $HOME/.go
set -x PATH $HOME/.go/bin $PATH

# direnv
eval (direnv hook fish)

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# aliases
alias s="start"
alias j="jump"
alias l="ls -al"
alias electric-monk="each-project gitkeeper"
alias gsed="git ls-files | xargs sed"
