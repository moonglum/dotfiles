# dotfiles

These are my dotfiles. Maybe they will inspire you, maybe they won't. They contain my configurations of Vim, tmux, ZSH and more. On my Mac, there are no developer tools installed except Vagrant, Ansible, iTerm 2 and Xcode. My dotfiles contain a Vagrantfile and Ansible scripts to provision the Vagrant box. So when I want to start developing on my machine, I do a `vagrant --provision up` and then a `vagrant ssh`. And then I work inside the Vagrant box.

I'm using [Solarized](http://ethanschoonover.com/solarized) as my color scheme. It's just beautiful. My font of choice is [Adobe Source Code Pro](https://github.com/adobe/Source-Code-Pro) in 12px.

## ZSH

My ZSH setup is quite minimal, nothing special going on here. Just standard stuff like activating auto complete, syntax highlighting, adjusting the PATH and lots of aliases and tiny functions. This is the prompt I created and use:

![Image of the prompt](http://images.moonglum.net/zsh-version-2.png)

The smiley represents the exit status of the last executed command. On the right side it displays information about the current directory and the Git status.

I adjusted the Jump plugin from Oh-my-ZSH to my needs. With `j` I can jump to directories I visit often. This includes their subdirectories, with autocomplete.

## tmux

Use tmux, it rocks!  
I configured it with some more Vim-like bindings and a powerline-inspired status bar. I really like it, it looks like this:

![Image of the powerline](http://images.moonglum.net/tmux-version-3.png)

I also use [tmuxinator](https://github.com/aziz/tmuxinator) to setup my development sessions.

## Vim

I use Vim in the terminal, because of tmux. I'm doing all my programming (currently that's Ruby and JavaScript most of the time) and most of my writing (in Latex and Markdown) in Vim. I'm using Pathogen for my plugin management (and Ansible to install them). It's great. I use the following plugins:

* Additional **language support** loaded on demand via [`sheerun/vim-polyglot`](https://github.com/sheerun/vim-polyglot) and [`lambdatoast/elm.vim`](https://github.com/lambdatoast/elm.vim)
* Mind blowing **git integration** via [`tpope/vim-fugitive`](https://github.com/tpope/vim-fugitive)
* Minimalistic **commenting** via [`tpope/vim-commentary`](https://github.com/tpope/vim-commentary)
* Asynchronous **build and test dispatcher** via [`tpope/vim-dispatch`](https://github.com/tpope/vim-dispatch)
* **Quoting/Parenthesizing** made simple via [`tpope/vim-surround`](https://github.com/tpope/vim-surround)
* Enable **repeat** for Surround and Commentary via [`tpope/vim-repeat`](https://github.com/tpope/vim-repeat)
* Custom **text objects for Ruby** via [`kana/vim-textobj-user`](https://github.com/kana/vim-textobj-user) and [`nelstrom/vim-textobj-rubyblock`](https://github.com/nelstrom/vim-textobj-rubyblock)
* For **rainbow parenthesis** I'm also using [`luochen1990/rainbow`](https://github.com/luochen1990/rainbow)
* Really great **Syntax checker** via [`scrooloose/syntastic`](https://github.com/scrooloose/syntastic)
* **Fuzzy finder** via [`ctrlpvim/ctrlp.vim`](https://github.com/ctrlpvim/ctrlp.vim)
* Great **rspec integration** via [`thoughtbot/vim-rspec`](https://github.com/thoughtbot/vim-rspec)

## Other commandline tools

* `git` is the only version control system I use. It has three amazing companions: [`hub`](http://hub.github.com), [`tig`](http://jonas.nitro.dk/tig) and [`git-svn`](http://git-scm.com/book/en/v1/Git-and-Other-Systems-Git-and-Subversion).
* `ag` aka. [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) is a replacement for grep that is so fast, that I can't really believe it.
* [`htop`](https://github.com/max-horvath/htop-osx) is a replacement for `top`.
* [`jq`](http://stedolan.github.io/jq) is like `sed` for JSON data.
* [`optiPNG`](http://optipng.sourceforge.net) is an PNG optimizer.
* [`tree`](http://mama.indstate.edu/users/ice/tree) prints the folder structure as a tree.
* [`wget`](http://www.gnu.org/software/wget), when I don't want to mess around with `curl`.
* [`ruby-install`](https://github.com/postmodern/ruby-install) to install Rubies, [`chruby`](https://github.com/postmodern/chruby) to switch between them.
* [`cloc`](https://github.com/AlDanial/cloc) counts lines of code.
* [`icdiff`](http://www.jefftk.com/icdiff) is a nicer diff tool.

## Languages I work or play with

* Ruby (Daily)
* JavaScript (Daily)
* I used Haskell and Prolog quite a lot in University
* I'm also playing around with Clojure, Idris, Rust and Elm

## Miscellaneous

* My terminal emulator of choice is [iTerm2](http://www.iterm2.com).
* I use US-Extended as my keyboard layout. The German keyboard layout is useless.
* When coding, I listen to the following music: Tron Legacy OST, Starcraft II OST, Diablo III OST, Octabitron, Saor Patrol, Schelmish, Zoë Keating, Au4, Daft Punk, LukHash, Monument Valley OST, Les Revenants OST, Apocalyptica...

## Thanks

* To Robby Russel for [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) and Greg V. for [zshuery](https://github.com/myfreeweb/zshuery), which inspired a lot of my zsh setup
* To Carl and Yehuda for [Janus](https://github.com/carlhuda/janus), which I used when I started with Vim
* To Drew Neil for his [screencasts](http://vimcasts.org) and his [book about Vim](http://pragprog.com/book/dnvim/practical-vim)
* To Brian P. Hogan for his [book about tmux](http://pragprog.com/book/bhtmux/tmux)
* To Gary Bernhardt for his [screencasts](https://www.destroyallsoftware.com/screencasts)
* To the following people for letting me steal from their dotfiles or provided feedback:
  * skwp
  * railsbros-dirk
  * bascht
  * bitboxer
* and to the [Vim Wikia](http://vim.wikia.com/wiki/Vim_Tips_Wiki) 
