" ============================================================================
" Monokai Pro — Thème complet pour Vim
" Authentique palette Monokai avec background transparent
" Optimisé pour termguicolors (24-bit) et fallback 256 colors
" ============================================================================

" Initialisation
hi clear
if exists("syntax_on")
    syntax reset
endif

set background=dark
let g:colors_name = "monokai_minimal"

" Vérification support termguicolors
if has('termguicolors')
    set termguicolors
endif

" ============================================================================
" Palette Monokai authentique
" ============================================================================
" Background: #272822 (optionnel, ici NONE pour transparent)
" Foreground: #F8F8F2
" Selection:  #49483E
" Comment:    #75715E
" Red:        #F92672
" Orange:     #FD971F
" Yellow:     #E6DB74
" Green:      #A6E22E
" Cyan:       #66D9EF
" Purple:     #AE81FF
" Brown:      #A59F85

" ============================================================================
" Interface utilisateur
" ============================================================================

" --- Base ---
hi Normal           guifg=#F8F8F2 guibg=NONE    ctermfg=231  ctermbg=NONE
hi NormalFloat      guifg=#F8F8F2 guibg=#1E1F1C ctermfg=231  ctermbg=234
hi NormalNC         guifg=#F8F8F2 guibg=NONE    ctermfg=231  ctermbg=NONE

" --- Curseur et lignes ---
hi Cursor           guifg=#272822 guibg=#F8F8F2 ctermfg=235  ctermbg=231
hi CursorLine       guibg=#3E3D32 ctermbg=237   gui=NONE     cterm=NONE
hi CursorLineNr     guifg=#FD971F guibg=NONE    ctermfg=208  ctermbg=NONE gui=bold cterm=bold
hi CursorColumn     guibg=#3E3D32 ctermbg=237

" --- Numéros de ligne et colonnes ---
hi LineNr           guifg=#75715E guibg=NONE    ctermfg=242  ctermbg=NONE
hi SignColumn       guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE
hi ColorColumn      guibg=#3E3D32 ctermbg=237
hi VertSplit        guifg=#49483E guibg=NONE    ctermfg=239  ctermbg=NONE gui=NONE cterm=NONE

" --- Sélection et recherche ---
hi Visual           guifg=NONE    guibg=#49483E ctermfg=NONE ctermbg=239
hi VisualNOS        guifg=NONE    guibg=#49483E ctermfg=NONE ctermbg=239
hi Search           guifg=#000000 guibg=#FFE792 ctermfg=16   ctermbg=221
hi IncSearch        guifg=#000000 guibg=#FD971F ctermfg=16   ctermbg=208
hi Substitute       guifg=#000000 guibg=#A6E22E ctermfg=16   ctermbg=148

" --- Messages et invites ---
hi ErrorMsg         guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE gui=bold cterm=bold
hi WarningMsg       guifg=#FD971F guibg=NONE    ctermfg=208  ctermbg=NONE gui=bold cterm=bold
hi ModeMsg          guifg=#E6DB74 guibg=NONE    ctermfg=186  ctermbg=NONE gui=bold cterm=bold
hi MoreMsg          guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE gui=bold cterm=bold
hi Question         guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE gui=bold cterm=bold

" --- Menus et popups ---
hi Pmenu            guifg=#F8F8F2 guibg=#3E3D32 ctermfg=231  ctermbg=237
hi PmenuSel         guifg=#000000 guibg=#66D9EF ctermfg=16   ctermbg=81
hi PmenuSbar        guibg=#49483E ctermbg=239
hi PmenuThumb       guibg=#75715E ctermbg=242
hi WildMenu         guifg=#000000 guibg=#A6E22E ctermfg=16   ctermbg=148

" --- Complétion ---
hi CompletionMatch  guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE gui=bold cterm=bold

" --- Barre de statut ---
hi StatusLine       guifg=#F8F8F2 guibg=#49483E ctermfg=231  ctermbg=239  gui=NONE cterm=NONE
hi StatusLineNC     guifg=#75715E guibg=#3E3D32 ctermfg=242  ctermbg=237  gui=NONE cterm=NONE
hi StatusLineTerm   guifg=#F8F8F2 guibg=#49483E ctermfg=231  ctermbg=239  gui=bold cterm=bold
hi StatusLineTermNC guifg=#75715E guibg=#3E3D32 ctermfg=242  ctermbg=237  gui=NONE cterm=NONE

" --- Tabline ---
hi TabLine          guifg=#75715E guibg=#3E3D32 ctermfg=242  ctermbg=237  gui=NONE cterm=NONE
hi TabLineFill      guifg=NONE    guibg=#3E3D32 ctermfg=NONE ctermbg=237  gui=NONE cterm=NONE
hi TabLineSel       guifg=#F8F8F2 guibg=#49483E ctermfg=231  ctermbg=239  gui=bold cterm=bold

" --- Pliage (folding) ---
hi Folded           guifg=#75715E guibg=#3E3D32 ctermfg=242  ctermbg=237  gui=italic cterm=italic
hi FoldColumn       guifg=#75715E guibg=NONE    ctermfg=242  ctermbg=NONE

" --- Divers UI ---
hi Title            guifg=#FD971F guibg=NONE    ctermfg=208  ctermbg=NONE gui=bold cterm=bold
hi Directory        guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE gui=bold cterm=bold
hi SpecialKey       guifg=#49483E guibg=NONE    ctermfg=239  ctermbg=NONE
hi NonText          guifg=#49483E guibg=NONE    ctermfg=239  ctermbg=NONE
hi EndOfBuffer      guifg=#3E3D32 guibg=NONE    ctermfg=237  ctermbg=NONE
hi Conceal          guifg=#75715E guibg=NONE    ctermfg=242  ctermbg=NONE
hi MatchParen       guifg=#000000 guibg=#FD971F ctermfg=16   ctermbg=208  gui=bold cterm=bold

" --- Spell checking ---
hi SpellBad         guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE gui=undercurl cterm=undercurl
hi SpellCap         guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE gui=undercurl cterm=undercurl
hi SpellLocal       guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE gui=undercurl cterm=undercurl
hi SpellRare        guifg=#AE81FF guibg=NONE    ctermfg=141  ctermbg=NONE gui=undercurl cterm=undercurl

" --- Diff ---
hi DiffAdd          guifg=#A6E22E guibg=#3E3D32 ctermfg=148  ctermbg=237
hi DiffChange       guifg=#FD971F guibg=#3E3D32 ctermfg=208  ctermbg=237
hi DiffDelete       guifg=#F92672 guibg=#3E3D32 ctermfg=197  ctermbg=237
hi DiffText         guifg=#66D9EF guibg=#49483E ctermfg=81   ctermbg=239  gui=bold cterm=bold

" --- Quickfix / Location List ---
hi QuickFixLine     guifg=#000000 guibg=#E6DB74 ctermfg=16   ctermbg=186

" ============================================================================
" Syntaxe générale
" ============================================================================

hi Comment          guifg=#75715E guibg=NONE    ctermfg=242  ctermbg=NONE gui=italic cterm=italic
hi SpecialComment   guifg=#75715E guibg=NONE    ctermfg=242  ctermbg=NONE gui=italic,bold cterm=italic,bold

hi Constant         guifg=#AE81FF guibg=NONE    ctermfg=141  ctermbg=NONE
hi String           guifg=#E6DB74 guibg=NONE    ctermfg=186  ctermbg=NONE
hi Character        guifg=#E6DB74 guibg=NONE    ctermfg=186  ctermbg=NONE
hi Number           guifg=#AE81FF guibg=NONE    ctermfg=141  ctermbg=NONE
hi Boolean          guifg=#AE81FF guibg=NONE    ctermfg=141  ctermbg=NONE
hi Float            guifg=#AE81FF guibg=NONE    ctermfg=141  ctermbg=NONE

hi Identifier       guifg=#F8F8F2 guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE cterm=NONE
hi Function         guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE gui=NONE cterm=NONE

hi Statement        guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE gui=NONE cterm=NONE
hi Conditional      guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE gui=NONE cterm=NONE
hi Repeat           guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE gui=NONE cterm=NONE
hi Label            guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE gui=NONE cterm=NONE
hi Operator         guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE gui=NONE cterm=NONE
hi Keyword          guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE gui=NONE cterm=NONE
hi Exception        guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE gui=bold cterm=bold

hi PreProc          guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE
hi Include          guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE
hi Define           guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE
hi Macro            guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE
hi PreCondit        guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE

hi Type             guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass     guifg=#FD971F guibg=NONE    ctermfg=208  ctermbg=NONE gui=italic cterm=italic
hi Structure        guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE
hi Typedef          guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE

hi Special          guifg=#FD971F guibg=NONE    ctermfg=208  ctermbg=NONE
hi SpecialChar      guifg=#AE81FF guibg=NONE    ctermfg=141  ctermbg=NONE
hi Tag              guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE
hi Delimiter        guifg=#F8F8F2 guibg=NONE    ctermfg=231  ctermbg=NONE
hi Debug            guifg=#FD971F guibg=NONE    ctermfg=208  ctermbg=NONE gui=bold cterm=bold

hi Underlined       guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE gui=underline cterm=underline
hi Ignore           guifg=#49483E guibg=NONE    ctermfg=239  ctermbg=NONE
hi Error            guifg=#F8F8F2 guibg=#F92672 ctermfg=231  ctermbg=197
hi Todo             guifg=#FFFFFF guibg=#FD971F ctermfg=231  ctermbg=208  gui=bold cterm=bold

" ============================================================================
" Support langages spécifiques
" ============================================================================

" --- Vim ---
hi vimCommand       guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE
hi vimVar           guifg=#F8F8F2 guibg=NONE    ctermfg=231  ctermbg=NONE
hi vimFunction      guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE
hi vimLet           guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE
hi vimOption        guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE

" --- Shell/Bash ---
hi shDerefVar       guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE
hi shVariable       guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE
hi shFunction       guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE
hi shQuote          guifg=#E6DB74 guibg=NONE    ctermfg=186  ctermbg=NONE

" --- Python ---
hi pythonBuiltin    guifg=#66D9EF guibg=NONE    ctermfg=81   ctermbg=NONE gui=italic cterm=italic
hi pythonFunction   guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE
hi pythonDecorator  guifg=#FD971F guibg=NONE    ctermfg=208  ctermbg=NONE
hi pythonInclude    guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE
hi pythonImport     guifg=#F92672 guibg=NONE    ctermfg=197  ctermbg=NONE
hi pythonRun        guifg=#75715E guibg=NONE    ctermfg=242  ctermbg=NONE
hi pythonException  guifg=#A6E22E guibg=NONE    ctermfg=148  ctermbg=NONE gui=bold cterm=bold

" --- JavaScript/TypeScript ---
hi javaScriptFunction       guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE gui=italic cterm=italic
hi javaScriptIdentifier     guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE gui=italic cterm=italic
hi javaScriptBraces         guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE
hi javaScriptParens         guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE

hi typescriptImport         guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi typescriptExport         guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi typescriptVariable       guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE gui=italic cterm=italic
hi typescriptBraces         guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE
hi typescriptArrowFunc      guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE

" --- HTML/XML ---
hi htmlTag              guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE
hi htmlEndTag           guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE
hi htmlTagName          guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi htmlArg              guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi htmlSpecialChar      guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE
hi htmlLink             guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE gui=underline cterm=underline

hi xmlTag               guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE
hi xmlTagName           guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi xmlEndTag            guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE

" --- CSS ---
hi cssBraces            guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE
hi cssClassName         guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi cssClassNameDot      guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE
hi cssColor             guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE
hi cssProp              guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE
hi cssAttr              guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE
hi cssValueLength       guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE
hi cssValueNumber       guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE
hi cssImportant         guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE gui=bold cterm=bold

" --- JSON ---
hi jsonKeyword          guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi jsonString           guifg=#E6DB74 guibg=NONE ctermfg=186 ctermbg=NONE
hi jsonBoolean          guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE
hi jsonNumber           guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE
hi jsonNull             guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE

" --- Markdown ---
hi markdownHeadingDelimiter guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE gui=bold cterm=bold
hi markdownH1               guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE gui=bold cterm=bold
hi markdownH2               guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE gui=bold cterm=bold
hi markdownH3               guifg=#E6DB74 guibg=NONE ctermfg=186 ctermbg=NONE gui=bold cterm=bold
hi markdownH4               guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE gui=bold cterm=bold
hi markdownH5               guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE gui=bold cterm=bold
hi markdownH6               guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE gui=bold cterm=bold
hi markdownCode             guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi markdownCodeBlock        guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi markdownCodeDelimiter    guifg=#75715E guibg=NONE ctermfg=242 ctermbg=NONE
hi markdownBold             guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE gui=bold cterm=bold
hi markdownItalic           guifg=#E6DB74 guibg=NONE ctermfg=186 ctermbg=NONE gui=italic cterm=italic
hi markdownUrl              guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE gui=underline cterm=underline
hi markdownLinkText         guifg=#AE81FF guibg=NONE ctermfg=141 ctermbg=NONE

" --- Git ---
hi gitcommitComment         guifg=#75715E guibg=NONE ctermfg=242 ctermbg=NONE gui=italic cterm=italic
hi gitcommitOnBranch        guifg=#75715E guibg=NONE ctermfg=242 ctermbg=NONE gui=italic cterm=italic
hi gitcommitBranch          guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE gui=bold cterm=bold
hi gitcommitHeader          guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi gitcommitSelected        guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi gitcommitDiscarded       guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi gitcommitUnmerged        guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi gitcommitSummary         guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE
hi gitcommitOverflow        guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE

" ============================================================================
" Support plugins populaires
" ============================================================================

" --- GitGutter / Signify ---
hi GitGutterAdd             guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi GitGutterChange          guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE
hi GitGutterDelete          guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi GitGutterChangeDelete    guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE

hi SignifySignAdd           guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi SignifySignChange        guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE
hi SignifySignDelete        guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE

" --- ALE (linter) ---
hi ALEErrorSign             guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE gui=bold cterm=bold
hi ALEWarningSign           guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE gui=bold cterm=bold
hi ALEInfoSign              guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE

" --- CoC (Conquer of Completion) ---
hi CocErrorSign             guifg=#F92672 guibg=NONE ctermfg=197 ctermbg=NONE
hi CocWarningSign           guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE
hi CocInfoSign              guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE
hi CocHintSign              guifg=#75715E guibg=NONE ctermfg=242 ctermbg=NONE

" --- NERDTree ---
hi NERDTreeDir              guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE
hi NERDTreeDirSlash         guifg=#66D9EF guibg=NONE ctermfg=81  ctermbg=NONE
hi NERDTreeFile             guifg=#F8F8F2 guibg=NONE ctermfg=231 ctermbg=NONE
hi NERDTreeExecFile         guifg=#A6E22E guibg=NONE ctermfg=148 ctermbg=NONE
hi NERDTreeOpenable         guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE
hi NERDTreeClosable         guifg=#FD971F guibg=NONE ctermfg=208 ctermbg=NONE

" --- fzf ---
hi fzf1                     guifg=#F92672 guibg=#3E3D32 ctermfg=197 ctermbg=237
hi fzf2                     guifg=#FD971F guibg=#3E3D32 ctermfg=208 ctermbg=237
hi fzf3                     guifg=#E6DB74 guibg=#3E3D32 ctermfg=186 ctermbg=237

" ============================================================================
" Terminal colors (Neovim)
" ============================================================================
if has('nvim')
    let g:terminal_color_0  = '#272822'
    let g:terminal_color_1  = '#F92672'
    let g:terminal_color_2  = '#A6E22E'
    let g:terminal_color_3  = '#E6DB74'
    let g:terminal_color_4  = '#66D9EF'
    let g:terminal_color_5  = '#AE81FF'
    let g:terminal_color_6  = '#66D9EF'
    let g:terminal_color_7  = '#F8F8F2'
    let g:terminal_color_8  = '#75715E'
    let g:terminal_color_9  = '#F92672'
    let g:terminal_color_10 = '#A6E22E'
    let g:terminal_color_11 = '#E6DB74'
    let g:terminal_color_12 = '#66D9EF'
    let g:terminal_color_13 = '#AE81FF'
    let g:terminal_color_14 = '#66D9EF'
    let g:terminal_color_15 = '#F8F8F2'
endif

" ============================================================================
" vim: set sw=4 ts=4 sts=4 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
