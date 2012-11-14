" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" This is required for Vundle
filetype off
" Activate Syntax Highlight
syntax enable
" Add line numbers
" set number
" Set default encoding to UTF-8
set encoding=utf-8
" Highlight search results
set hlsearch
" Deactivate Wrapping
set nowrap
" Treat all numbers as decimal
set nrformats=
" Highlight the Current Line
set cursorline
" I don't like Swapfiles
set noswapfile
" Use the clipboard of Mac OS
" set clipboard=unnamed

" === MacVim Setup ===

if has("gui_running")
  " Right Font and Font-Size
  set guifont=Source\ Code\ Pro:h14
  " No Toolbar
  set guioptions=egmrt
  " No Scrollbar
  set guioptions-=r
endif

" === Vundle Setup ===
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" =========== Solarized Dark ===========
" Currently using the dark version
Bundle 'altercation/vim-colors-solarized'
set background=dark
colorscheme solarized

" === Additional Language Support ===
Bundle "tpope/vim-haml"
Bundle "pangloss/vim-javascript"
Bundle "tpope/vim-markdown"
Bundle "kchmck/vim-coffee-script"

" === Added Functionality ===
" Syntastic: Really great Syntax checker
Bundle "scrooloose/syntastic"
" Tabular: Amazing Aligning Utility
Bundle "godlygeek/tabular"
" Snipmate: TextMate Style Snippets
" This includes some dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"
" Full path fuzzy finder
Bundle "kien/ctrlp.vim"
" ... that ignores certain files
set wildignore+=*aux,Gemfile.lock,*.gitkeep

" ========= Whitespace, Indentation and Invisible Characters =========
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

" Highlight Characters that overstep the 80 character limit
match ErrorMsg '\%>80v.\+'

" Automatically set the indent of a new line (local to buffer)
" from railsbros-dirk
set ai

" === Spell Checking ===
" No further configuration necessary:
" Checks Comments, Latex, Markdown...
set spell
" I prefer British English, but American English is used in almost all projects
" I'm involved in. Naff.
set spelllang=en_us

" === Language Specific Setting ===
" From janus

" File types that do not contain source code should wrap their text
" and should not have a character limit per line.
function! s:setupWrapping()
  set wrap
  set linebreak
  set nolist
  match ErrorMsg ''
endfunction

" Make sure all mardown files have the correct filetype set and setup wrapping
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()

" LaTeX files should also have Wrapping
au BufRead,BufNewFile *.tex call s:setupWrapping()

" Set the Ruby filetype for a number of common Ruby files without .rb
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript

" === Movements ===
" Stolen from railsbros-dirk

" OSX like movement
" Currently only works in MacVim
" Jump words with alt-arrow (osx style)
map <M-Left> b
map <M-Right> w
imap <M-Left> <Esc>bi
imap <M-Right> <Esc><Right>wi

" Make cursor move by visual lines instead of file lines (when wrapping)
map k gk
map j gj

" --- End ---
" This is required for Vundle
filetype plugin indent on
