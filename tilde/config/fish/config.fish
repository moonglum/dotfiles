# set the default editor to vim
set -x EDITOR 'vim'

# direnv
eval (direnv hook fish)

# use ripgrep to provide the list of all files that are not git ignored to fzf
set -x FZF_DEFAULT_COMMAND "rg --files --hidden -g '!.git'"

# Scripts
fish_add_path --path --move $HOME/.exe

# Go
set -x GOPATH $HOME/.go
fish_add_path --path --move $HOME/.go/bin

# Ruby
set -x RBENV_SHELL $SHELL
set -x GEM_HOME $HOME/.gems
fish_add_path --path --move --prepend $HOME/.rbenv/shims

# Python
fish_add_path --path --move $HOME/.local/bin

# Rust
fish_add_path --path --move $HOME/.cargo/bin

# aliases
alias s="start"
alias j="jump"
alias l="exa -al"
alias ll="exa -l"
alias tree="exa --tree"
alias electric-monk="list-projects | each gitkeeper"
