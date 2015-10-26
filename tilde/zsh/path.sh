## Manipulation of the path and loading stuff

# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Home
PATH=$PATH:$HOME/.bin

# For homebrew
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH

# For LaTeX
PATH=/usr/texbin:$PATH

# For Cabal
PATH=/Users/moonglum/.cabal/bin:$PATH

# For NPM
PATH=/usr/local/nodejs/default/bin:$PATH

# For Heroku Toolbelt
PATH=/usr/local/heroku/bin:$PATH

# For Chicken
PATH=/usr/local/Cellar/chicken/4.8.0.5/bin:$PATH
