# dotfiles

These are my dotfiles. They contain my configurations of vim, tmux, ZSH and more. On my Mac, there are no developer tools installed except Vagrant, VirtualBox, iTerm 2, XQuartz, and the Xcode Command Line Tools. My dotfiles contains a Vagrantfile to provision the Vagrant box running in VirtualBox, provisioned by Ansible. So when I want to start developing on my machine, I do a `vagrant up && vagrant ssh` and then I work inside the Vagrant box. From time to time I run a `vagrant destroy` to keep everything clean.

I'm using [Solarized](http://ethanschoonover.com/solarized) as my color scheme. It's just beautiful. My font of choice is [Fira Code](https://github.com/tonsky/FiraCode) ([Nerd Font patched](https://github.com/ryanoasis/nerd-fonts)) in 12px with enabled ligatures. I then work in full screen mode. This is how the entire looks like:

![Screenshot](http://images.dohmen.io/dotfiles.png)

## ZSH

My ZSH setup is quite minimal, nothing special going on here. Just standard stuff like activating auto complete, syntax highlighting, adjusting the PATH and a handful of aliases and tiny functions.

The smiley represents the exit status of the last executed command. On the right side it displays information about the current directory and the Git status.

I adjusted the Jump plugin from Oh-my-ZSH to my needs. With `j` I can jump to directories I visit often. This includes their subdirectories, with autocomplete.

## tmux

Use tmux, it rocks!
I configured it with some more Vim-like bindings and a powerline-inspired status bar.

To start working on a project, I use my tiny `s` function which starts a tmux session for a project with the correct start directory.

## Vim

I'm doing all my programming (currently that's Ruby and JavaScript most of the time) and most of my writing (in Latex and Markdown) in vim. I use the following plugins:

* Additional **language support** loaded on demand via [`sheerun/vim-polyglot`](https://github.com/sheerun/vim-polyglot)
* Minimalistic **commenting** via [`tpope/vim-commentary`](https://github.com/tpope/vim-commentary)
* **Quoting/Parenthesizing** made simple via [`tpope/vim-surround`](https://github.com/tpope/vim-surround)
* Enable **repeat** for Surround and Commentary via [`tpope/vim-repeat`](https://github.com/tpope/vim-repeat)
* **Peace in the office** via [`editorconfig/editorconfig-vim`](https://github.com/editorconfig/editorconfig-vim)
* On-the-fly **linting feedback** via [`benekastah/neomake`](https://github.com/benekastah/neomake)

## Other commandline tools

* [`git`](https://www.git-scm.com) is the only version control system I use. It has two amazing companions: [`hub`](http://hub.github.com) and [`tig`](http://jonas.nitro.dk/tig)
* `ag` aka. [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) is a replacement for grep that is so fast, that I can't really believe it.
* [`htop`](https://github.com/max-horvath/htop-osx) is a replacement for `top`.
* [`jq`](http://stedolan.github.io/jq) is like `sed` for JSON data.
* [`tree`](http://mama.indstate.edu/users/ice/tree) prints the folder structure as a tree.
* [`wget`](http://www.gnu.org/software/wget) and [`curl`](http://curl.haxx.se)
* [`alex`](http://alexjs.com) to catch insensitive, inconsiderate writing.
* [`pry`](http://pryrepl.org) is a replacement for Ruby's IRB
* [`mdless`](http://brettterpstra.com/projects/mdless) is a less for Markdown files
* [`ragel`](http://www.colm.net/open-source/ragel) is a beautiful state machine compiler
* [`youtube-dl`](https://rg3.github.io/youtube-dl) allows me to download videos for train trips
* [`docker`](https://www.docker.com) and `docker-compose` because I really wish it would do what I want
* [`xsel`](http://xsel.sourceforge.net) and `xorg` to access the macOS clipboard

## Languages I work or play with

* Ruby and JavaScript (Daily)
* I used Haskell and Prolog quite a lot in University
* I'm also playing around with Idris, Clojure, Elixir, Rust, Go, and Elm

## Synchronizing the clipboard

In order to access the macOS clipboard from the Vagrant box, I start XQuartz before I run `vagrant ssh`. Through x11 forwarding it will now be able to access the clipboard:

* `xsel -b` will output the content of the clipboard. I can also pipe to it when I want to write to the clipboard.
* In vim:
    * When I select something in visual mode, I can copy it to the clipboard with `\c`
    * In normal mode, I can paste from the clipboard with `\p`
* In tmux: When I select something in select mode and hit `y` it will be copied to the clipboard

## Miscellaneous

* My terminal emulator of choice is [iTerm2](http://www.iterm2.com).
* I use US-Extended as my keyboard layout. The German keyboard layout is useless.
* When coding, I listen to the following music: Tron Legacy OST, Starcraft II OST, Diablo III OST, Octabitron, Saor Patrol, Schelmish, Zoë Keating, Au4, Daft Punk, LukHash, Monument Valley OST, Les Revenants OST, Apocalyptica, VNV Nation...

## Thanks

* To Robby Russel for [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) and Greg V. for [zshuery](https://github.com/myfreeweb/zshuery), which inspired a lot of my zsh setup
* To Carl and Yehuda for [Janus](https://github.com/carlhuda/janus), which I used when I started with Vim
* To Drew Neil for his [screencasts](http://vimcasts.org) and his [book about Vim](http://pragprog.com/book/dnvim/practical-vim)
* To Brian P. Hogan for his [book about tmux](http://pragprog.com/book/bhtmux/tmux)
* To Gary Bernhardt for his [screencasts](https://www.destroyallsoftware.com/screencasts)
* To the following people for letting me steal from their dotfiles or providing feedback:
  * railsbros-dirk
  * bascht
  * bitboxer
