filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

" Security
set modelines=0

set autoindent  
set smartindent

set noexrc

syntax on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab autoindent
set showmatch
set laststatus=2

set ruler
set number
set incsearch
set paste
set relativenumber

set virtualedit=all

filetype plugin on
filetype indent on

set noerrorbells
set visualbell
set t_vb=

" Text wrap
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85


" Status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)


" Backups
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups

" Leader
let mapleader = ","
          
" HTML tag closing
inoremap <C-_> <Space><BS><Esc>:call InsertCloseTag()<cr>a

" Clean whitespace
map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


" Rainbows
nmap <leader>R :RainbowParenthesesToggle<CR>

" Syntax stuff
"au BufNewFile,BufRead *.less set filetype=css
"au BufNewFile,BufRead *.less set foldmethod=marker
"au BufNewFile,BufRead *.less set foldmarker={,}
"au BufNewFile,BufRead *.less set nocursorline

cmap w!! w !sudo tee >/dev/null %
