" Vundle setup
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'      " Let vundle manage vundle, required
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-vinegar'
Plugin 'jiangmiao/auto-pairs'

" Vundle end
call vundle#end()               " required
filetype plugin indent on       " required


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User settings

set expandtab softtabstop=4 shiftwidth=4    " Indent with 4 spaces
set hidden                              " Hide buffers instead of closing
set noswapfile

set foldmethod=indent foldlevel=99      " Indentation-based folding
set colorcolumn=80
set cursorline
set number
set mouse=a

set listchars=tab:»\ ,trail:· list

" All-lowercase searches are case-insensitive
" If any upper-case letters, treat as case sensitive
set ignorecase smartcase


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings

let mapleader="\<Space>"

" Use j/k for screen lines, and gj/gk for actual lines (swap their behavior)
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk
nnoremap gj j
vnoremap gj j
nnoremap gk k
vnoremap gk k

" Moving between windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Toggle clipboard-friendly mode
function! ToggleMouse()
    if &mouse == 'a'            " check if mouse is enabled
        set mouse=              " disable mouse
    else
        set mouse=a             " enable mouse everywhere
    endif
endfunc
command Clip set number!|call ToggleMouse()|set paste!
command ClipMode set nonumber|set mouse=|set paste
command NoClipMode set number|set mouse=a|set nopaste

nnoremap <Leader>n :nohlsearch<CR>

