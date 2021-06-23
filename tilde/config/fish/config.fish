set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# set the default editor to vim
set -x EDITOR 'vim'

# use "git ls-files" as the file list for fzf
set -x FZF_DEFAULT_COMMAND 'git ls-files'

source ~/.asdf/asdf.fish

# Ruby
set -x PATH $HOME/.gem/ruby/2.7.0/bin $PATH

# Python
set -x PATH $HOME/.local/bin $PATH

# Go
set -x PATH $HOME/.asdf/installs/golang/1.15/packages/bin $PATH
set -x GOPRIVATE bitbucket.org/advance52

# direnv
eval (direnv hook fish)
