# dotfiles

This is the VM that I work in. It contains my configurations of vim, tmux, fish and more. On my Mac, there are no developer tools installed except Vagrant, VirtualBox, iTerm2, and the Xcode Command Line Tools. My dotfiles contains a Vagrantfile to provision the Vagrant box running in VirtualBox with Ansible. So when I want to start developing on my machine, I do a `vagrant up && vagrant ssh` and then I work inside the Vagrant box. From time to time I run a `vagrant destroy` to keep everything clean. I use US-Extended as my keyboard layout (The German keyboard layout doesn't work for me).

I'm using [Solarized Light](https://ethanschoonover.com/solarized) as my color scheme. My font of choice is [Input](http://input.fontbureau.com) in 11px. I then work in full screen mode. This is how the entire thing looks like:

![Screenshot](dotfiles.png)

## fish

I'm using [fish](http://fishshell.com) as my shell. I noticed that it does a lot of things I needed to configure in ZSH by default and switched to it. The only thing I configured is that I use [fzf](https://github.com/junegunn/fzf), because I really missed `Ctrl+r` for reverse searching and I like the incremental search.

The prompt is a tiny arrow (or a ✦ when there are jobs in the background) that is green when the last status exit was 0, and red otherwise. In the right prompt, I display the pwd and the current git status. I have a few aliases, scripts and functions:

* With `j` (or `jump`) I can jump to my Code projects
* To start or continue working on a project, I use my tiny `s` (or `start`) function which starts (or attaches to) a tmux session for a project with the correct start directory.
* `l` is just `ls -al`
* `mdoutline` shows the outline of a Markdown document (only works correctly, if you don't use the 'underline' variant for headlines)
* `rabbit` enforces an NTP sync
* `serve` serve the current directory via HTTP
* `gb` is a prettier `git branch`
* `gl` is a prettier `git log`
* `postgres` and `redis` start a temporary fresh PostgreSQL or Redis instance in a docker container
* `compressability` shows the size of a file, and its GZIPed and brotlied size
* `churn` shows the frequency of change of the files in a project (Git repos only)
* `history_analysis` shows the commands that you ran most in your (fish) shell
* `each-project` calls a command for each project in `~/Code` in parallel
* `gitkeeper` checks if there is unpushed work on a repo (plus some more options)
* `electric-monk` runs gitkeeper for each project (replacement for an old gem of mine)

## tmux

Use tmux, it rocks! I configured it with some more vim-like bindings and a nice status bar with the current time and battery charge (via `acpi`).

## vim

I'm doing all my programming and most of my writing in vim. I run my vim pretty plain with a few exception. I'm using [`tpope/vim-sensible`](https://github.com/tpope/vim-sensible) to set a few **nice defaults**. Additional **language support** is loaded on demand via [`sheerun/vim-polyglot`](https://github.com/sheerun/vim-polyglot). I haven't configured spaces, tabs and similar things---instead I use [`editorconfig`](https://github.com/editorconfig/editorconfig-vim) to follow the convention of the projects.

To jump to files, I use a **fuzzy file finder** ([`junegunn/fzf`](https://github.com/junegunn/fzf)) that I've bound to Ctrl+P. I use `git ls-files` as the source for its suggestions which means I can jump to any file known to git. I can't remember the last time I opened a file without it.

I use Tim Pope plugins for **commenting** ([`tpope/vim-commentary`](https://github.com/tpope/vim-commentary)) as well as **quoting/parenthesizing** ([`tpope/vim-surround`](https://github.com/tpope/vim-surround)) and make both **repeatable** ([`tpope/vim-repeat`](https://github.com/tpope/vim-repeat)).

Finally, I'm using [`w0rp/ale`](https://github.com/w0rp/ale) for **formatting, linting feedback and LSP support**. Code is formatted automatically with [prettier](https://prettier.io) or a similar tool if it is available for the programming language. I show a 😺 in lines with linting errors, with details on hovering. The linters are autodetected, and I have quite a few installed. When pressing tab (and I'm not at the beginning of a line, where I actually want to insert a tab) I run the omnifunc provided by ALE to ask the according language server for a completion.

## Other commandline tools

* [`git`](https://www.git-scm.com) is the only version control system I use. It has an amazing companion: [`tig`](http://jonas.nitro.dk/tig)
* [`ripgrep`](https://github.com/BurntSushi/ripgrep) is a replacement for grep that is so fast, that I can't really believe it
* [`jq`](http://stedolan.github.io/jq) is like `sed` for JSON data, but I mostly use it for pretty printing
* [`tree`](http://mama.indstate.edu/users/ice/tree) prints the folder structure as a tree
* [`wget`](http://www.gnu.org/software/wget) and [`curl`](http://curl.haxx.se)
* [`pry`](http://pryrepl.org) is a replacement for Ruby's IRB with `amazing_print`
* [`ragel`](http://www.colm.net/open-source/ragel) is a beautiful state machine compiler
* [`youtube-dl`](https://rg3.github.io/youtube-dl) allows me to download videos for train trips
* [`docker`](https://www.docker.com) and `docker-compose` because I really wish it would do what I want
* [`shellcheck`](https://www.shellcheck.net) to get feedback about shell scripts
* [`asciinema`](https://asciinema.org) to record terminal things
* [`direnv`](https://direnv.net) to load and unload environment variables depending on the current directory

## Languages I work or play with

The programming languages I use regularly are installed via `asdf` so I can switch versions and always be on the most recent release.

* I write Ruby, JavaScript/TypeScript (Node, Browser or Deno) and CSS almost daily
* Currently working in a Go project
* Playing around with Rust and Elixir, just because Go frustrates me so deeply

## Making GPG available in the box

*Thanks for @bascht for helping me setting this up.*

On my Mac, I have [GPGTools](https://gpgtools.org) installed to write and receive GPG encryped emails. The GPG agent on my Mac is configured to create an extra GPG socket.

```
# ~/.gnupg/gpg-agent.conf
default-cache-ttl 300
max-cache-ttl 999999
enable-ssh-support
extra-socket /Users/moonglum/.gnupg/S.gpg-agent.extra
```

SSH is then configured to forward that extra socket to the virtual machine:

```
# ~/.ssh/config
Host 127.0.0.1
  RemoteForward /var/run/user/1000/gnupg/S.gpg-agent /Users/moonglum/.gnupg/S.gpg-agent.extra
  ExitOnForwardFailure yes
```

In addition to that, the host and machine share the pubring.gpg and trustdb.gpg. They are both in the folder of this repo (but gitignored), and then linked to the according locations.

## Thanks

* To Drew Neil for [his book(s) about vim](https://pragprog.com/book/dnvim2/practical-vim-second-edition)
* To Brian P. Hogan for his [book about tmux](https://pragprog.com/book/bhtmux2/tmux-2)
* To Gary Bernhardt for his [screencasts](https://www.destroyallsoftware.com/screencasts)
* To Dirk, Bascht & Bodo for letting me steal from their dotfiles and providing feedback
