set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# set the default editor to vim
set -x EDITOR 'vim'

# use "git ls-files" as the file list for fzf
set -x FZF_DEFAULT_COMMAND 'git ls-files'

# Ruby
set -x PATH $HOME/.gem/ruby/2.6.0/bin $PATH

# Node
set -x PATH $HOME/.npm/bin $PATH

# Python
set -x PATH $HOME/.local/bin $PATH

# Deno
set -x DENO_INSTALL $HOME/.deno
set -x PATH $DENO_INSTALL/bin $PATH

# direnv
direnv hook fish | source
