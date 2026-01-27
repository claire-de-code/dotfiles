" ============================================================================
" Configuration Vim - IDE sans plugins
" ============================================================================

" --- COMPATIBILITÉ ET ENCODAGE ---
set nocompatible              " Désactive la compatibilité Vi
filetype plugin indent on     " Détection de type de fichier + indentation
syntax on                     " Coloration syntaxique
set encoding=utf-8            " Encodage UTF-8

" --- INTERFACE UTILISATEUR ---
set number                    " Numéros de ligne absolus
set relativenumber            " Numéros relatifs (pratique pour sauts)
set cursorline                " Surligne la ligne courante
set scrolloff=8               " 8 lignes de marge en haut/bas
set sidescrolloff=8           " 8 colonnes de marge gauche/droite
set nowrap                    " Pas de retour à la ligne automatique
set signcolumn=yes            " Colonne pour signes (erreurs, etc.)
set laststatus=2              " Toujours afficher la barre de statut
set showcmd                   " Affiche les commandes en cours
set wildmenu                  " Menu d'autocomplétion amélioré
set wildmode=longest:full,full " Comportement de complétion
set termguicolors             " Support couleurs 24-bit

" --- BARRE DE STATUT PERSONNALISÉE ---
set statusline=
set statusline+=%#StatusLine#
set statusline+=\ %f\                    " Nom du fichier
set statusline+=%m                       " [+] si modifié
set statusline+=%r                       " [RO] si lecture seule
set statusline+=%=                       " Séparateur gauche/droite
set statusline+=\ %y\                    " Type de fichier
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ " Encodage
set statusline+=\ %l:%c\                 " Ligne:Colonne
set statusline+=\ %p%%\                  " Pourcentage dans le fichier

" --- INDENTATION ---
set tabstop=4                 " Largeur visuelle d'une tabulation
set shiftwidth=4              " Largeur d'indentation (>>, <<)
set softtabstop=4             " Espaces lors de Tab en mode insertion
set expandtab                 " Convertir les tabs en espaces
set smartindent               " Indentation intelligente
set autoindent                " Garde l'indentation de la ligne précédente

" --- RECHERCHE ---
set ignorecase                " Insensible à la casse par défaut
set smartcase                 " Sensible si majuscules dans la recherche
set incsearch                 " Recherche incrémentale (pendant la frappe)
set hlsearch                  " Surligne les résultats

" --- UNDO PERSISTANT ---
set undofile                  " Historique d'annulation persistant
set undolevels=1000           " Nombre max d'annulations
set undoreload=10000          " Lignes max sauvegardées au rechargement

" Créer le répertoire d'undo s'il n'existe pas
if !isdirectory($HOME.'/.vim/undo')
    call mkdir($HOME.'/.vim/undo', 'p', 0700)
endif
set undodir=~/.vim/undo       " Emplacement des fichiers d'undo

" --- GESTION DES FICHIERS ---
set hidden                    " Permet de changer de buffer sans sauvegarder
set autoread                  " Recharge auto si fichier modifié ailleurs
set noswapfile                " Désactive les fichiers swap (optionnel)
set nobackup                  " Pas de fichiers de backup
set writebackup               " Backup temporaire pendant l'écriture
set clipboard=unnamedplus     " Utilise le presse-papiers système

" --- PERFORMANCES ---
set updatetime=300            " Temps avant écriture du swap (ms)
set timeoutlen=500            " Délai pour séquences de touches (ms)
set lazyredraw                " Ne redessine pas pendant les macros

" --- LEADER KEY ---
" Définit Space comme leader (doit être avant les mappings)
nnoremap <Space> <Nop>
let mapleader=" "

" ============================================================================
" RACCOURCIS CLAVIER
" ============================================================================

" --- RACCOURCIS GÉNÉRAUX ---
nnoremap <Leader>w :w<CR>                    " Space + w : sauvegarder
nnoremap <Leader>q :q<CR>                    " Space + q : quitter
nnoremap <Leader>x :x<CR>                    " Space + x : sauvegarder et quitter

" --- NAVIGATION BUFFERS ---
nnoremap <Tab> :bnext<CR>                    " Tab : buffer suivant
nnoremap <S-Tab> :bprevious<CR>              " Shift+Tab : buffer précédent
nnoremap <Leader>bd :bd<CR>                  " Space + bd : fermer buffer

" --- RECHERCHE ---
nnoremap <Esc><Esc> :nohlsearch<CR>          " Esc Esc : enlever surlignage

" --- MOUVEMENTS AMÉLIORÉS ---
" j/k se déplacent visuellement (même sur lignes wrappées)
nnoremap j gj
nnoremap k gk

" --- FENÊTRES (SPLITS) ---
nnoremap <Leader>v :vsplit<CR>               " Space + v : split vertical
nnoremap <Leader>h :split<CR>                " Space + h : split horizontal
nnoremap <C-h> <C-w>h                        " Ctrl+h : fenêtre gauche
nnoremap <C-j> <C-w>j                        " Ctrl+j : fenêtre bas
nnoremap <C-k> <C-w>k                        " Ctrl+k : fenêtre haut
nnoremap <C-l> <C-w>l                        " Ctrl+l : fenêtre droite

" ============================================================================
" EXPLORATEUR DE FICHIERS (NETRW) - SIDEBAR À GAUCHE
" ============================================================================

let g:netrw_banner = 0                       " Pas de bannière
let g:netrw_liststyle = 3                    " Vue en arbre
let g:netrw_browse_split = 4                 " Ouvre dans fenêtre précédente
let g:netrw_altv = 1                         " Split vertical à DROITE
let g:netrw_winsize = 25                     " Largeur 25%

" ASTUCE : Pour avoir le sidebar à GAUCHE, on inverse la logique
" On ouvre le split à droite, puis on bascule avec Ctrl+w r
nnoremap <Leader>e :Vexplore<CR><C-w>r       " Space + e : explorateur à gauche

" --- NAVIGATION NETRW ---
" Enter : ouvrir fichier/dossier
" - : dossier parent
" gh : toggle fichiers cachés
" % : créer fichier
" d : créer dossier
" D : supprimer
" R : renommer

" ============================================================================
" BUILD / COMPILATION / TESTS
" ============================================================================

" Configuration par défaut : npm run build
" À personnaliser selon le projet :
" - JavaScript/Node : set makeprg=npm\ run\ build ou npm\ test
" - Python : set makeprg=pytest ou python\ -m\ unittest
" - C/C++ : set makeprg=make ou gcc\ %\ -o\ %<
set makeprg=npm\ run\ build

" --- RACCOURCIS BUILD ---
nnoremap <Leader>m :w<CR>:make<CR>           " Space + m : sauver + make
nnoremap <Leader>c :copen<CR>                " Space + c : ouvrir quickfix
nnoremap <Leader>n :cnext<CR>                " Space + n : erreur suivante
nnoremap <Leader>p :cprevious<CR>            " Space + p : erreur précédente
nnoremap <Leader>cc :cclose<CR>              " Space + cc : fermer quickfix

" ============================================================================
" AUTOCOMPLÉTION NATIVE
" ============================================================================

" Vim a une autocomplétion intégrée puissante en mode insertion :
" Ctrl+n / Ctrl+p : mots du buffer actuel
" Ctrl+x Ctrl+f : chemins de fichiers
" Ctrl+x Ctrl+l : lignes entières
" Ctrl+x Ctrl+o : omni-completion (selon langage)

set completeopt=menu,menuone,noselect        " Options de complétion
set shortmess+=c                             " Pas de messages inutiles

" ============================================================================
" THÈME COULEUR - MONOKAI-LIKE AVEC BACKGROUND TRANSPARENT
" ============================================================================

" Définition manuelle d'un thème inspiré de Monokai
" Compatible avec termguicolors (24-bit)

set background=dark

" Réinitialiser les couleurs
highlight clear
if exists("syntax_on")
    syntax reset
endif

" --- COULEURS DE BASE ---
" Background transparent (AUCUN = transparent)
highlight Normal guifg=#F8F8F2 guibg=NONE
highlight NonText guifg=#49483E guibg=NONE
highlight LineNr guifg=#75715E guibg=NONE
highlight CursorLineNr guifg=#FD971F guibg=NONE gui=bold
highlight CursorLine guibg=#3E3D32 ctermbg=236

" --- UI ÉLÉMENTS ---
highlight StatusLine guifg=#F8F8F2 guibg=#49483E gui=NONE
highlight StatusLineNC guifg=#75715E guibg=#3E3D32 gui=NONE
highlight VertSplit guifg=#49483E guibg=NONE
highlight Pmenu guifg=#F8F8F2 guibg=#49483E
highlight PmenuSel guifg=#272822 guibg=#66D9EF
highlight PmenuSbar guibg=#49483E
highlight PmenuThumb guibg=#75715E

" --- RECHERCHE ---
highlight Search guifg=#000000 guibg=#FFE792
highlight IncSearch guifg=#000000 guibg=#FD971F

" --- SÉLECTION VISUELLE ---
highlight Visual guibg=#49483E

" --- SYNTAXE ---
highlight Comment guifg=#75715E gui=italic
highlight Constant guifg=#AE81FF
highlight String guifg=#E6DB74
highlight Character guifg=#E6DB74
highlight Number guifg=#AE81FF
highlight Boolean guifg=#AE81FF
highlight Float guifg=#AE81FF

highlight Identifier guifg=#FD971F
highlight Function guifg=#A6E22E

highlight Statement guifg=#F92672
highlight Conditional guifg=#F92672
highlight Repeat guifg=#F92672
highlight Label guifg=#F92672
highlight Operator guifg=#F92672
highlight Keyword guifg=#F92672
highlight Exception guifg=#F92672

highlight PreProc guifg=#A6E22E
highlight Include guifg=#A6E22E
highlight Define guifg=#A6E22E
highlight Macro guifg=#A6E22E
highlight PreCondit guifg=#A6E22E

highlight Type guifg=#66D9EF
highlight StorageClass guifg=#F92672
highlight Structure guifg=#66D9EF
highlight Typedef guifg=#66D9EF

highlight Special guifg=#66D9EF
highlight SpecialChar guifg=#AE81FF
highlight Tag guifg=#F92672
highlight Delimiter guifg=#F8F8F2
highlight SpecialComment guifg=#75715E gui=italic
highlight Debug guifg=#FD971F

highlight Underlined guifg=#66D9EF gui=underline
highlight Ignore guifg=#49483E
highlight Error guifg=#F8F8F2 guibg=#F92672
highlight Todo guifg=#FFFFFF guibg=#FD971F gui=bold

" --- DIFFÉRENCES ---
highlight DiffAdd guifg=#A6E22E guibg=#3E3D32
highlight DiffChange guifg=#FD971F guibg=#3E3D32
highlight DiffDelete guifg=#F92672 guibg=#3E3D32
highlight DiffText guifg=#66D9EF guibg=#49483E gui=bold

" --- SIGNCOLUMN ---
highlight SignColumn guibg=NONE

" ============================================================================
" FONCTIONS UTILES
" ============================================================================

" Fonction : Afficher la position du curseur
function! ShowCursorPosition()
    let l:line = line('.')
    let l:col = col('.')
    let l:total = line('$')
    let l:percent = (l:line * 100) / l:total
    echo printf('Ligne %d/%d (%d%%), Colonne %d', l:line, l:total, l:percent, l:col)
endfunction
nnoremap <Leader>i :call ShowCursorPosition()<CR>

" Fonction : Supprimer les espaces en fin de ligne
function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction
nnoremap <Leader>t :call TrimWhitespace()<CR>

" ============================================================================
" AUTO-COMMANDES
" ============================================================================

augroup vimrc_autocommands
    autocmd!
    
    " Retour à la dernière position connue à l'ouverture
    autocmd BufReadPost *
        \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
        \ |   exe "normal! g`\""
        \ | endif
    
    " Création automatique de dossiers parents lors de :w
    autocmd BufWritePre *
        \ if !isdirectory(expand('<afile>:p:h'))
        \ |   call mkdir(expand('<afile>:p:h'), 'p')
        \ | endif
    
    " Surligner les yanks (copie)
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=200}
    
augroup END

" ============================================================================
" NOTES D'UTILISATION
" ============================================================================

" WORKFLOW RECOMMANDÉ :
" 1. Ouvrir Vim dans le dossier du projet : vim fichier.js
" 2. Space + e : ouvrir l'explorateur de fichiers à gauche
" 3. Enter dans netrw : ouvrir des fichiers (deviennent des buffers)
" 4. Tab / Shift+Tab : naviguer entre buffers ouverts
" 5. Space + m : lancer le build (make)
" 6. Space + c : voir les erreurs (quickfix)
"
" PERSONNALISATION PAR PROJET :
" Dans le dossier du projet, créer un fichier .vimrc.local :
"   set makeprg=npm\ test          " Pour tests
"   set tabstop=2 shiftwidth=2     " Pour indentation 2 espaces
" Puis charger avec : :source .vimrc.local

" ============================================================================
" FIN DU FICHIER .vimrc
" ============================================================================
