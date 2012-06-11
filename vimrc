" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" Activate Syntax Highlight
syntax enable
" Add line numbers
set number
" Set default encoding to UTF-8
set encoding=utf-8
" Highlight search results
set hlsearch
" Deactive Wrapping
set nowrap

" =============== Pathogen Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins
" setup inspired by skwp/dotfiles

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" =========== Solarized Dark ===========
" Currently using the dark version
" from skwp/dotfiles
set background=dark
colorscheme solarized

" ========= Whitespace and Invisible Characters =========
" based upon vimcasts

" Show invisible characters:
" Tabs and trailing whitespace
set list
set listchars=tab:›\ ,trail:‹

" Tabs should be 2 spaces
set tabstop=2
" Soft-Tabs should be 2 spaces
set softtabstop=2
" When shifting, use 2 spaces
set shiftwidth=2
" Use Soft-Tabs
set expandtab

" Makefiles require tabs
autocmd FileType make setlocal noexpandtab

" === Spell Checking ===
" No further configuration necessary:
" Checks Comments, Latex, Markdown...
set spell
set spelllang=en_gb
