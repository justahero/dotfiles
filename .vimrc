" Use the Molokai theme (originally created for TextMate by Wimer Hazenberg)
colorscheme molokai

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow cursor keys in insert mode
set esckeys


" ====== General Options ======

syntax enable
set nocompatible       " Make Vim more useful

set number             " Show line numbers
set relativenumber     " Show relative line numbers
set showcmd            " Show incomplete commands in status bar
set showmode           " Show current mode in status bar
set visualbell         " No sounds
set autoread           " Reload files modified outside vim


" ====== Indentation ======

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on


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
