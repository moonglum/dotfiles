" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" =============== Pathogen Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" =========== Syntax Highlight with Solarized ===========
" Currently using the dark version
syntax enable
set background=dark
colorscheme solarized