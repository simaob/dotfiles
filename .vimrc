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
Plugin 'altercation/vim-colors-solarized'
Plugin 'wting/rust.vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'sjl/gundo.vim'

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

" tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

set number
set numberwidth=3
set showbreak=>\
set hlsearch
set nocompatible
filetype on
set ttyfast
set ignorecase smartcase
set visualbell
set history=100
set viminfo+=:100
set viminfo+=/100
set switchbuf=useopen
set nobackup
set noswapfile

"Airline plugin configs
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
set statusline=%{fugitive#statusline()}


let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme desert

set colorcolumn=80

set relativenumber
set number

set synmaxcol=250

set backspace=indent,eol,start

nnoremap <leader>G :GundoToggle<CR> 
