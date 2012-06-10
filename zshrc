# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="moonglum"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Shortcuts
alias o='open'
alias m='make'
alias g='guard'
alias b='bundle'

# Github-flavored Git
alias git=hub

# Server Connection with a tunnel, so rmating is possible
alias tunnel='ssh -R 52698:localhost:52698 '

# JavaScript Console (Webkit)
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"

# Use vim as default editor – git for example
export EDITOR='vim -f'

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH
PATH=$PATH:$HOME/.rvm/bin 

# For homebrew
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH

# For my code directory
alias c='nocorrect c'
c() { cd ~/Code/$1; }
_c() { _files -W ~/Code -/; }
compdef _c c

# Info about RVM environment
alias rvm-info='rvm-prompt i v g'