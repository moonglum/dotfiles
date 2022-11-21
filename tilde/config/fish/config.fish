# set the default editor to vim
set -x EDITOR 'vim'

# direnv
eval (direnv hook fish)

# use fdfind as the file list for fzf
set -x FZF_DEFAULT_COMMAND "fdfind --type file --hidden --exclude .git"

# Go
set -x GOPATH $HOME/.go
fish_add_path --path --move /home/$USER/.go/bin

# Ruby
set -x GEM_HOME /home/$USER/.gems
fish_add_path --path --move /home/$USER/.rbenv/shims

# Python
fish_add_path --path --move /home/$USER/.local/bin

# Rust
fish_add_path --path --move /home/$USER/.cargo/bin

# aliases
alias s="start"
alias j="jump"
alias l="exa -al"
alias tree="exa --tree"
alias electric-monk="list-projects | each gitkeeper"
