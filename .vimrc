set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'grep.vim'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-endwise'
Plugin 'elzr/vim-json'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'sjl/badwolf'
Plugin 'wting/rust.vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'sjl/gundo.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

syntax on


" remap leader to comma
let mapleader=","

" tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

set number
set numberwidth=3
set showbreak=>\
set hlsearch
set incsearch "search as characters are entered
set nocompatible
filetype on
set ttyfast
set ignorecase smartcase
set visualbell
set history=100
set viminfo+=:100
set viminfo+=/100
set switchbuf=useopen
" moves backup to tmp folder
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" set noswapfile

"Airline plugin configs
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
set statusline=%{fugitive#statusline()}


let g:solarized_termcolors=256
set background=dark
colorscheme badwolf
" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
" Make the tab line lighter than the background.
let g:badwolf_tabline = 2
" Turn on CSS properties highlighting
let g:badwolf_css_props_highlight = 1

"colorscheme solarized
"colorscheme desert

set colorcolumn=80

set relativenumber
set number

set synmaxcol=250

set backspace=indent,eol,start

nnoremap <leader>G :GundoToggle<CR>

set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! StripTrailingWhitespaces()
  " save last search & cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction

" Source of many of this http://dougblack.io/words/a-good-vimrc.html
