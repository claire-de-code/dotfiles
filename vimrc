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

" --- Explorateur de fichier ---
let g:netrw_banner = 0        " enlève la bannière
let g:netrw_liststyle = 3    " vue en arbre
let g:netrw_browse_split = 2 " ouvre les fichiers dans la fenêtre existante
let g:netrw_altv = 1         " split à droite

nnoremap <leader>e :Vexplore<CR>

