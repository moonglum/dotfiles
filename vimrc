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

" === Language Specific Setting ===
" From janus

" Some file types should wrap their text
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=72
  set nolist
endfunction

" Make sure all mardown files have the correct filetype set and setup wrapping
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()

" Set the Ruby filetype for a number of common Ruby files without .rb
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,config.ru,*.rake} set ft=ruby

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript
