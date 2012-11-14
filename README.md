# dotfiles

These are my dotfiles. Maybe they will inspire you, maybe they won't. They contain my configurations of Vim, tmux and ZSH (and also: ack, ruby gems and rvm).

## ZSH

I use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). It has nice plugins that are a great inspiration. I will probably set-up my own zsh config from ground-up, but for now Vim is my priority.

This is the prompt I created and use:

![Image of the prompt](https://img.skitch.com/20120605-x8nnh1x85qncw5b3mgqqngembe.jpg)

I also created a [pull-request](https://github.com/robbyrussell/oh-my-zsh/pull/1123), but themes won't get pulled into the project anymore. Therefore I use [my own fork](https://github.com/moonglum/oh-my-zsh).

The only plugin I currently use is the git plugin, but I may look at other plugins in the future.

## tmux

Use tmux, it rocks!
My setup is based upon the setup suggested in "tmux: Productive Mouse-Free Development". I adjusted some things though. I also use tmuxinator to setup my development sessions.

## Vim

When I started with Vim, I used Janus. But it was way too much stuff in there that I possibly will never use. Also I like to know my configuration ;) So I re-started my Vimrc from Scratch.

Most of the time I use Vim in the terminal, because of tmux. Occasionally I use MacVim. I'm doing all my programming (currently that's Ruby and JavaScript most of the time) and most of my writing (in Latex and Markdown) in Vim.
I'm using gmarik's vundle for plugin management. It's great. I use the following plugins:

### Additional Language Support

* **HAML** and **SASS** via [`tpope/vim-haml`](http://github.com/tpope/vim-haml)
* Better **JavaScript** Support via [`pangloss/vim-javascript`](http://github.com/pangloss/vim-javascript)
* **Markdown** via [`tpope/vim-markdown`](http://github.com/tpope/vim-markdown)
* **CoffeeScript** via [`kchmck/vim-coffee-script`](http://github.com/kchmck/vim-coffee-script)

### Additional Functionality

* **Solarized** Theme via [`altercation/vim-colors-solarized`](http://github.com/altercation/vim-colors-solarized)
* Really great **Syntax checker** via [`scrooloose/syntastic`](http://github.com/scrooloose/syntastic)
* Amazing **Aligning Utility** via [`godlygeek/tabular`](http://github.com/godlygeek/tabular)
* TextMate-like **Snippets** via [`garbas/vim-snipmate`](http://github.com/garbas/vim-snipmate) (plus dependencies)
* **Fuzzy finder** via [`kien/ctrlp.vim`](http://github.com/kien/ctrlp.vim)

## Miscellaneous

* I'm using [Solarized](http://ethanschoonover.com/solarized) as my color scheme. It's just beautiful. Using [this version](https://github.com/sorin-ionescu/solarized/blob/692b152ed669cd0435d5233515fe6d17d67fe7a7/osx-terminal.app-colors-solarized/xterm-256color/Solarized%20Dark%20xterm-256color.terminal) of the Solarized Theme for Terminal.app.
* [Adobe Source Code Pro](https://github.com/adobe/Source-Code-Pro) is the font I'm using. In 14px. I know that's huge, but sometimes I lean back in my chair to reason about my code (like a sir). And then I still want to be able to read my code ;)
* My terminal emulator of choice is Terminal.app, because it does everything I need.
* All my projects are stored in `~/Code`. I can switch to any of the projects via `c PROJECT_NAME` including auto completion. See my zshrc for that.
* I use US-Extended  as my keyboard layout. The German layout is useless.
* When coding, I listen to the following music: Tron Legacy OST, Starcraft II OST, Diablo III OST, Octabitron, Saor Patrol, Schelmish, Zoë Keating

## Thanks

* To Robby Russel for Oh-My-Zsh
* To Carl and Yehuda for Janus, which I used when I started with Vim
* To Drew Neil for his screencasts and his book about Vim
* To Brian P. Hogan for his book about tmux
* To the following people for letting me steal from their dotfiles:
  * skwp
  * railsbros-dirk
* and to the [Vim Wikia](http://vim.wikia.com/wiki/Vim_Tips_Wiki) 
