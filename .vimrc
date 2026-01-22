" =========================
" Vim minimal sans plugins
" =========================

set nocompatible
filetype plugin indent on
syntax on

set encoding=utf-8
set hidden
set updatetime=300
set signcolumn=yes
set clipboard=unnamedplus
set termguicolors

" --- UI ---
set number
set relativenumber
set cursorline
set scrolloff=5
set sidescrolloff=5
set nowrap

" --- Indentation ---
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent

" --- Recherche ---
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <Esc><Esc> :nohlsearch<CR>

" --- Undo persistant ---
set undofile
set undodir=~/.vim/undo//

" --- Leader ---
nnoremap <Space> <Nop>
let mapleader=" "

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>

" --- Mouvements ---
nnoremap j gj
nnoremap k gk

" --- Thème ---
colorscheme monokai_minimal

