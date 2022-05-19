set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# set the default editor to vim
set -x EDITOR 'vim'

# use fdfind as the file list for fzf
set -x FZF_DEFAULT_COMMAND "fdfind --type file"

# Go
set -x GOPRIVATE bitbucket.org/advance52
set -x GOPATH $HOME/.go
fish_add_path --path --move /home/moonglum/.go/bin

# direnv
eval (direnv hook fish)

# rbenv
set -x RBENV_SHELL fish
fish_add_path --path --move /home/moonglum/.rbenv/shims

# aliases
alias s="start"
alias j="jump"
alias l="ls -al"
alias electric-monk="each-project gitkeeper"
alias gsed="git ls-files | xargs sed"
