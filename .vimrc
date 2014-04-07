set nocompatible       " Make Vim more useful

" Use the Molokai theme (originally created for TextMate by Wimer Hazenberg)
colorscheme molokai

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow cursor keys in insert mode
set esckeys

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ====== General Options ======

syntax enable
set history=1000
set t_Co=256           " Tell Vim to use 256 colors

set number             " Show line numbers
set relativenumber     " Show relative line numbers
set cursorline         " Highlight cursor line
set showcmd            " Show incomplete commands in status bar
set showmode           " Show current mode in status bar
set visualbell         " No sounds
set autoread           " Reload files modified outside vim
set laststatus=2       " Always show status line
set showmatch          " Show matching brackets
set matchtime=2        " Highlight matching brackets 0.2 seconds
set matchpairs+=<:>    " Especially for HTML tags

set ruler

" ====== Indentation ======

filetype plugin on
filetype indent on

set autoindent
set smartindent
" set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab


" ====== Folding ======

set foldmethod=indent    " Fold based on indent
set foldnestmax=3        " deepest fold level set to 3
set nofoldenable         " Folding is deactivated by default


" ====== Scrolling ======

set scrolloff=8          " Start scrolling 8 lines from margin
set sidescrolloff=15
set sidescroll=1


" ====== Code Completion ======

set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.jpeg,*.gif


" ====== Swap / Temp files ======

set noswapfile
set nobackup
set nowb


" Allow backspace in insert mode
set backspace=indent,eol,start


" ====== Plugins handled by vundle ======

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Ctrl-P fuzzy file search plugin
Plugin 'kien/ctrlp.vim'

" Coffeescript syntax highlighting
Plugin 'kchmck/vim-coffee-script'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'