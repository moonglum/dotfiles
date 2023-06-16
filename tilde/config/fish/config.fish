# set the default editor to vim
set -x EDITOR 'vim'

# direnv
eval (direnv hook fish)

# use ripgrep to provide the list of all files that are not git ignored to fzf
set -x FZF_DEFAULT_COMMAND "rg --files --hidden -g '!.git'"

# Scripts
fish_add_path --path --move $HOME/.exe

# Ruby
set -x RBENV_SHELL $SHELL
set -x GEM_HOME $HOME/.gems
fish_add_path --path --move --prepend $HOME/.rbenv/shims

# Rust
fish_add_path --path --move $HOME/.cargo/bin

# start a tmux session in the provided project
complete -c s -f -a '(ls -1 ~/Code)'
function s
  tmux new -A -s $argv[1] -c ~/Code/$argv[1]
end

# jump to the provided project
complete -c j -f -a '(ls -1 ~/Code)'
function j
  cd ~/Code/$argv[1]
end

# aliases
alias l="exa -al"
alias ll="exa -l"
alias tree="exa --tree"
alias electric-monk="list-projects | each gitkeeper"
