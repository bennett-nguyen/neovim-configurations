" Install Caskaydia Cove nerd fonts

" ~/.config/nvim/autoload/plug.vim at vim-plug repo
filetype off
set nocompatible " Reject Vi, be iMproved.

call plug#begin('~\AppData\Local\nvim\plugged')
" put plugins here
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'chun-yang/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim' 
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'APZelos/blamer.nvim'
Plug 'morhetz/gruvbox'
Plug 'numirias/semshi'
call plug#end()

filetype plugin indent on
lan en_US
set encoding=utf-8
set number
set expandtab
set nowrap
set tabstop=4
set showcmd
set softtabstop=4
syntax on
set wildmenu
set wildmode=list:longest 
set showmatch
set noswapfile
set termguicolors
set cursorline
set cursorcolumn
let g:gruvbox_contrast_dark='hard'

let g:gruvbox_italic=1
let g:gruvbox_improved_warnings = 1
let g:gruvbox_italicize_comments = 1

colorscheme gruvbox
source ~\AppData\Local\nvim\plug-config\coc.vim

let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:airline_powerline_fonts = 1

" Key map
vnoremap <C-S> :update<CR>
nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi
map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <S-w> :q<CR>
