# set the default editor to vim
set -x EDITOR 'vim'

# direnv
eval (direnv hook fish)

# on Ubuntu, fd is called fdfind
if not type -q fd
  alias fd=fdfind
end

# use fd as the file list for fzf
set -x FZF_DEFAULT_COMMAND "fd --type file --hidden --exclude .git"

# Scripts
fish_add_path --path --move $HOME/.exe

# Go
set -x GOPATH $HOME/.go
fish_add_path --path --move $HOME/.go/bin

# Ruby
set -x GEM_HOME $HOME/.gems
fish_add_path --path --move $HOME/.rbenv/shims

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
