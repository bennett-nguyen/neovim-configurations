" Install Caskaydia Cove nerd fonts

"for linux ~/.config/nvim/autoload/plug.vim at vim-plug repo
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

" indent consists of 4 spaces character when hitting the tab key
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

set nowrap
set showcmd
syntax on
set wildmenu
set wildmode=list:longest 
set showmatch
set noswapfile
set termguicolors " override the terminal emulator's colorscheme
set cursorline

" initialize gruvbox attribute before set it as a colorscheme
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1
let g:gruvbox_improved_warnings = 1
let g:gruvbox_italicize_comments = 1
colorscheme gruvbox

" don't know why i put this here but whatever
source ~\AppData\Local\nvim\plug-config\coc.vim

" blamer
let g:blamer_enabled = 1
let g:blamer_delay = 500

" extra syntax highlighter for python
function MyCustomHighlights()
    " You can change the token color by modifying the value of guifg
    hi semshiLocal           ctermfg=209 guifg=#d65d0e
    hi semshiGlobal          ctermfg=214 guifg=#fabd2f
    hi semshiImported        ctermfg=214 guifg=#7dc7d1 cterm=bold gui=bold
    hi semshiParameter       ctermfg=75  guifg=#83a598
    hi semshiParameterUnused ctermfg=117 guifg=#458588 cterm=underline gui=underline
    hi semshiFree            ctermfg=218 guifg=#d3869b
    hi semshiBuiltin         ctermfg=207 guifg=#e58697
    hi semshiAttribute       ctermfg=49  guifg=#fe8019
    hi semshiSelf            ctermfg=249 guifg=#fb4934
    hi semshiUnresolved      ctermfg=226 guifg=#fabd2f cterm=underline gui=underline
    hi semshiSelected        ctermfg=231 guifg=#ebdbb2 ctermbg=161 guibg=#b57614

    hi semshiErrorSign       ctermfg=231 guifg=#ebdbb2 ctermbg=160 guibg=#fb4934
    hi semshiErrorChar       ctermfg=231 guifg=#ebdbb2 ctermbg=160 guibg=#fb4934
    sign define semshiError text=E> texthl=semshiErrorSign
endfunction
autocmd FileType python call MyCustomHighlights()

" enable the rectangle shapes on status line
let g:airline_powerline_fonts = 1

" Key map
" Ctrl + s to update the buffer
" Ctrl + n to open up nerdtree
" Shift + w to close the current tab
vnoremap <C-S> :update<CR>
nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi
map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <S-w> :q<CR>
