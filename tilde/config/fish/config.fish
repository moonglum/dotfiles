set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# set the default editor to vim
set -x EDITOR 'vim'

# use "git ls-files" as the file list for fzf
set -x FZF_DEFAULT_COMMAND 'git ls-files'

source ~/.asdf/asdf.fish

# Ruby
set -x PATH $HOME/.gem/ruby/3.0.0/bin $PATH

# Python (not installed via asdf)
set -x PATH $HOME/.local/bin $PATH

# Go
set -x GOPRIVATE bitbucket.org/advance52

# Rust
set -x PATH $HOME/.cargo/bin $PATH

# direnv
eval (direnv hook fish)
