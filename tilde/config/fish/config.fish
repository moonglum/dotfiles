set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# set the default editor to vim
set -x EDITOR 'vim'

# use fdfind as the file list for fzf (include hidden files)
set -x FZF_DEFAULT_COMMAND "fdfind -H --type file"

# Go
set -x GOPRIVATE bitbucket.org/advance52
set -x GOPATH $HOME/.go
fish_add_path --path --move /home/$USER/.go/bin

# direnv
eval (direnv hook fish)

# Ruby
set -x RBENV_SHELL fish
set -x GEM_HOME /home/$USER/.gems
fish_add_path --path --move /home/$USER/.rbenv/shims

# Python
fish_add_path --path --move /home/$USER/.local/bin

# Rust
fish_add_path --path --move /home/$USER/.cargo/bin

# aliases
alias s="start"
alias j="jump"
alias l="ls -al"
alias electric-monk="each-project gitkeeper"
alias gsed="git ls-files | xargs sed"
