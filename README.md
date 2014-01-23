# dotfiles [![badge](https://raw.github.com/moonglum/exogenesis/master/badge.png)](https://github.com/moonglum/exogenesis)

These are my dotfiles. Maybe they will inspire you, maybe they won't. They contain my configurations of Vim, tmux and ZSH (and also: ack, ruby gems and rvm).

First you need to install `rake` and `exogenesis` via Ruby Gems. Then it can be installed via `rake install`, updated with `rake update` and removed via `rake uninstall`. Use the latter with caution :wink:

## ZSH

My ZSH setup is quite minimal, nothing crazy going on here. Just standard stuff like activating auto complete, syntax highlighting, adjusting the PATH and lots of aliases and tiny functions. This is the prompt I created and use:

![Image of the prompt](http://images.moonglum.net/zsh-version-2.png)

The smiley represents the exit status of the last executed command. On the right side it displays information about the current directory and the Git status.

## tmux

Use tmux, it rocks!  
I configured it with some more Vim-like bindings and a powerline-inspired status bar. I really like it, it looks like this:

![Image of the powerline](http://images.moonglum.net/tmux-version-3.png)

I also use [tmuxinator](https://github.com/aziz/tmuxinator) to setup my development sessions. tmux is so ingrained in my workflow that I start it automatically whenever I open a new iTerm2 window via the `Send text at start` option with `tmux new-session -A -s standard`.

I also use [reattach-to-user-namespace](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard) for Vim. That's very important.

## Vim

When I started with Vim, I used Janus. But it was way too much stuff in there that I possibly will never use. Also I like to know my configuration :wink: So I re-started my Vimrc from Scratch.

I use Vim in the terminal, because of tmux. I'm doing all my programming (currently that's Ruby and JavaScript most of the time) and most of my writing (in Latex and Markdown) in Vim.
I'm using @gmarik's vundle for plugin management. It's great. I use the following plugins:

* Additional **language support** loaded on demand via [`sheerun/vim-polyglot`](https://github.com/sheerun/vim-polyglot)
* Amazing **Aligning Utility** via [`godlygeek/tabular`](https://github.com/godlygeek/tabular)
* Nice **ack integration** via [`mileszs/ack.vim`](https://github.com/mileszs/ack.vim)
* Mind blowing **git integration** via [`tpope/vim-fugitive`](https://github.com/tpope/vim-fugitive)
* Minimalistic **commenting** via [`tpope/vim-commentary`](https://github.com/tpope/vim-commentary)
* Asynchronous **build and test dispatcher** via [`tpope/vim-dispatch`](https://github.com/tpope/vim-dispatch)
* **Quoting/Parenthesizing** made simple via [`tpope/vim-surround`](https://github.com/tpope/vim-surround)
* Enable **repeat** for Surround and Commentary via [`tpope/vim-repeat`](https://github.com/tpope/vim-repeat)
* **Emojis** for Vim via [`junegunn/vim-emoji`](https://github.com/junegunn/vim-emoji)
* Really great **Syntax checker** via [`scrooloose/syntastic`](https://github.com/scrooloose/syntastic)
* **Fuzzy finder** via [`kien/ctrlp.vim`](https://github.com/kien/ctrlp.vim)

## Other commandline tools

* `git` is the only version control system I use. It has two amazing companions: [`hub`](http://hub.github.com) and [`tig`](http://jonas.nitro.dk/tig)
* `ag` aka. [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) is a replacement for grep that is so fast, that I can't really believe it.
* [`htop`](https://github.com/max-horvath/htop-osx) is a replacement for `top`
* [`jq`](http://stedolan.github.io/jq) is like `sed` for JSON data
* [`optiPNG`](http://optipng.sourceforge.net) is an PNG optimizer
* [`tree`](http://mama.indstate.edu/users/ice/tree) prints the folder structure as a tree
* [`wget`](http://www.gnu.org/software/wget), when I don't want to mess around with `curl`

## Languages I work or play with

* Ruby (Daily)
* JavaScript (Daily)
* Chicken Scheme & Common Lisp (Experiments)
* Clojure & ClojureScript (Just got started)
* Haskell (Wow. So Monads.)
* Prolog (Haven't used it in a while)
* Rust (Just got started)

## Miscellaneous

* I'm using [Solarized](http://ethanschoonover.com/solarized) as my color scheme. It's just beautiful.
* [Adobe Source Code Pro](https://github.com/adobe/Source-Code-Pro) is the font I'm using. In 14px. I know that's huge, but sometimes I lean back in my chair to reason about my code (like a sir). And then I still want to be able to read my code :wink:
* My terminal emulator of choice is [iTerm2](http://www.iterm2.com).
* I adjusted the Jump plugin from Oh-my-ZSH to my needs. With `j` I can jump to directories I visit often. This includes their subdirectories, with autocomplete.
* I use US-Extended as my keyboard layout. The German layout is useless.
* When coding, I listen to the following music: Tron Legacy OST, Starcraft II OST, Diablo III OST, Octabitron, Saor Patrol, Schelmish, Zoë Keating, Au4, Daft Punk, LukHash.

## Thanks

* To Robby Russel for [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) and Greg V. for [zshuery](https://github.com/myfreeweb/zshuery), which inspired a lot of my zsh setup
* To Carl and Yehuda for [Janus](https://github.com/carlhuda/janus), which I used when I started with Vim
* To Drew Neil for his [screencasts](http://vimcasts.org) and his [book about Vim](http://pragprog.com/book/dnvim/practical-vim)
* To Brian P. Hogan for his [book about tmux](http://pragprog.com/book/bhtmux/tmux)
* To Gary Bernhardt for his [screencasts](https://www.destroyallsoftware.com/screencasts)
* To the following people for letting me steal from their dotfiles:
  * skwp
  * railsbros-dirk
* and to the [Vim Wikia](http://vim.wikia.com/wiki/Vim_Tips_Wiki) 
