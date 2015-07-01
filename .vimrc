"" .vimrc
"" Christopher Wong
"" ----------------

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

set nocompatible              " Use Vim defaults
set bs=indent,eol,start       " Allow backspacing in insert mode
"set backup                   " Keep a backup file
set history=50                " Keep 50 lines of command line history
set ruler                     " Always show the cursor position
set viminfo='20,\"50          " Use a .viminfo file, no more than 50 registers

syntax on
filetype plugin indent on
set hlsearch                    " Highlight search terms
set background=dark             " Default color scheme for dark background
set t_Co=256                    " Use 256 colors

set undofile                    " Allows for persistent undo history
set undodir=$HOME/.vim/undo     " Directory in which undo history lives

filetype indent on
set number
set smartindent
set autoindent
set sw=2
set ts=2
set sts=2
set expandtab
highlight Constant  ctermfg=221
highlight LineNr    ctermfg=245
