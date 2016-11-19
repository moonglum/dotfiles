## Basic Configuration

# Locales
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Colors are awesome
autoload colors; colors;

# Load the completion system
# zstyle commands copied from zshuery
autoload -U compinit && compinit
zmodload -i zsh/complist # Load the Completion listing extensions
setopt complete_in_word  # Enable completion within a word
setopt auto_remove_slash # Remove trailing slashes
zstyle ':completion:*' insert-tab pending
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle -e ':completion:*' list-colors 'if [[ $words[1] != kill && $words[1] != strace ]]; then reply=( "'$highlights'" ); else reply=( "'$highlights2'" ); fi'
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*:hosts' hosts $hosts
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ./cache/
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:mpg321:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
zstyle ':completion:*:ogg123:*' file-patterns '*.(ogg|OGG):ogg\ files *(-/):directories'
zstyle ':completion:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"

# Parameter Expansion, Command Substitution and arithmetic expansion are performed in prompts
setopt prompt_subst

# No beep or visual bell
setopt no_beep

# Remove any right prompt from display when accepting a commandline
setopt transient_rprompt

# Use vim as default editor – git for example
export EDITOR='vim'

# Enable emacs mode
setopt emacs

# History Configuration (from zshuery)
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt share_history
setopt append_history
setopt hist_verify
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space

# quote pasted URLs
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Load functions from ~/.zsh/functions
fpath=(~/.zsh/functions $fpath)
# ...and load all functions therein at first incarnation
autoload -U ${fpath[1]}/*(.N:t)

# Export the path to the Rust source
export RUST_SRC_PATH=/usr/local/src/rustc-1.12.0/src
