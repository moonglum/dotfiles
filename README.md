# dotfiles

This is the VM that I work in. It contains my configurations of vim, tmux, fish and more. On my Mac, there are no developer tools installed except Vagrant, VirtualBox, Terminal.app, and the Xcode Command Line Tools. My dotfiles contains a Vagrantfile to provision the Vagrant box running in VirtualBox with Ansible. So when I want to start developing on my machine, I do a `vagrant up && vagrant ssh` and then I work inside the Vagrant box. From time to time I run a `vagrant destroy` to keep everything clean.

I'm using a [Nord](https://arcticicestudio.github.io/nord/) inspired color scheme and a [monochrome](https://github.com/fxn/vim-monochrome) vim. My font of choice is [Input](http://input.fontbureau.com) in 11px. I then work in full screen mode. This is how the entire thing looks like:

![Screenshot](dotfiles.png)

## fish

I'm using [fish](http://fishshell.com) as my shell. I noticed that it does a lot of things I needed to configure in ZSH by default and switched to it. The only thing I configured is that I use [fzf](https://github.com/junegunn/fzf), because I really missed `Ctrl+r` for reverse searching and I like the incremental search.

The prompt is a tiny arrow (or a ✦ when there are jobs in the background) that is green when the last status exit was 0, and red otherwise. In the right prompt, I display the pwd and the current git status.

With `j` I can jump to my Code projects. To start or continue working on a project, I use my tiny `s` function which starts (or attaches to) a tmux session for a project with the correct start directory.

## tmux

Use tmux, it rocks! I configured it with some more Vim-like bindings and a nice status bar with the current time and battery charge (via `acpi`).

## Vim

I'm doing all my programming and most of my writing in vim. I use the following plugins:

* Additional **language support** loaded on demand via [`sheerun/vim-polyglot`](https://github.com/sheerun/vim-polyglot)
* Minimalistic **commenting** via [`tpope/vim-commentary`](https://github.com/tpope/vim-commentary)
* **Quoting/Parenthesizing** made simple via [`tpope/vim-surround`](https://github.com/tpope/vim-surround)
* Enable **repeat** for Surround and Commentary via [`tpope/vim-repeat`](https://github.com/tpope/vim-repeat)
* **Peace in the office** via [`editorconfig/editorconfig-vim`](https://github.com/editorconfig/editorconfig-vim)
* On-the-fly **linting feedback and LSP support** via [`w0rp/ale`](https://github.com/w0rp/ale)
* **Run tests** from vim with [`janko/vim-test`](https://github.com/janko/vim-test)
* Fuzzy **file finder** with [`junegunn/fzf`](https://github.com/junegunn/fzf)

## Other commandline tools

* [`git`](https://www.git-scm.com) is the only version control system I use. It has an amazing companion: [`tig`](http://jonas.nitro.dk/tig)
* `ag` aka. [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) is a replacement for grep that is so fast, that I can't really believe it.
* [`gotop`](https://github.com/cjbassi/gotop) is a replacement for `top`.
* [`jq`](http://stedolan.github.io/jq) is like `sed` for JSON data.
* [`tree`](http://mama.indstate.edu/users/ice/tree) prints the folder structure as a tree.
* [`wget`](http://www.gnu.org/software/wget) and [`curl`](http://curl.haxx.se)
* [`alex`](http://alexjs.com) to catch insensitive, inconsiderate writing.
* [`pry`](http://pryrepl.org) is a replacement for Ruby's IRB
* [`mdless`](http://brettterpstra.com/projects/mdless) is a less for Markdown files
* [`ragel`](http://www.colm.net/open-source/ragel) is a beautiful state machine compiler
* [`youtube-dl`](https://rg3.github.io/youtube-dl) allows me to download videos for train trips
* [`docker`](https://www.docker.com) and `docker-compose` because I really wish it would do what I want
* [`shellcheck`](https://www.shellcheck.net) to get feedback about shell scripts
* [`asciinema`](https://asciinema.org) to record terminal things
* [`weechat`](http://weechat.org) to chat from the command line
* [`alex`](https://alexjs.com) and [`proselint`](http://proselint.com) to get feedback on writing
* The heroku CLI to interact with heroku
* [`electric_monk`](https://github.com/moonglum/electric_monk) to check if I have unpushed changes anywhere

## Languages I work or play with

* Ruby and JavaScript (Daily)
* I used Haskell and Prolog quite a lot back in University
* I'm also playing around with Idris, Clojure, Elixir, Rust, Go, and Elm

## Miscellaneous

* My terminal emulator of choice is Terminal.app
* I use US-Extended as my keyboard layout. The German keyboard layout doesn't work for me.

## Thanks

* To Drew Neil for [his book(s) about Vim](https://pragprog.com/book/dnvim2/practical-vim-second-edition)
* To Brian P. Hogan for his [book about tmux](https://pragprog.com/book/bhtmux2/tmux-2)
* To Gary Bernhardt for his [screencasts](https://www.destroyallsoftware.com/screencasts)
* To Dirk, Bascht & Bodo for letting me steal from their dotfiles and providing feedback
