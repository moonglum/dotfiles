set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# set the default editor to vim
set -x EDITOR 'vim'

# use "git ls-files" as the file list for fzf
set -x FZF_DEFAULT_COMMAND 'git ls-files'

# Ruby
set -x PATH $PATH $HOME/.gem/ruby/2.6.0/bin

# Node
set -x PATH $PATH $HOME/.npm/bin

# Python
set -x PATH $PATH $HOME/.local/bin

# Customer Stuff
set -x CC_HOME /home/vagrant/Code
