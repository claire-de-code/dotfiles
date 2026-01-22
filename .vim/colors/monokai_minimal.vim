" ========================================
" Monokai Minimal — transparent background
" ========================================

hi clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name="monokai_minimal"

" --- Base ---
hi Normal       guifg=#F8F8F2 guibg=NONE ctermbg=NONE
hi NonText      guifg=#75715E guibg=NONE ctermbg=NONE
hi EndOfBuffer  guifg=#272822 guibg=NONE ctermbg=NONE

" --- Gutter ---
hi LineNr       guifg=#75715E guibg=NONE ctermbg=NONE
hi CursorLineNr guifg=#F8F8F2 gui=bold cterm=bold
hi SignColumn   guibg=NONE ctermbg=NONE

" --- Cursor ---
hi CursorLine   gui=underline cterm=underline

" --- Syntax ---
hi Comment      guifg=#A6A28C gui=italic ctermfg=180 cterm=italic
hi Constant     guifg=#AE81FF
hi String       guifg=#E6DB74
hi Identifier   guifg=#F8F8F2
hi Function     guifg=#A6E22E
hi Statement    guifg=#F92672
hi Keyword      guifg=#F92672
hi Type         guifg=#66D9EF
hi Special      guifg=#FD971F
hi Number       guifg=#AE81FF
hi Boolean      guifg=#AE81FF

" --- UI ---
hi Visual       guibg=#49483E
hi Search       guibg=#FFE792 guifg=#000000
hi MatchParen  guibg=#FD971F guifg=#000000

hi StatusLine   guifg=#F8F8F2 guibg=NONE ctermbg=NONE
hi StatusLineNC guifg=#75715E guibg=NONE ctermbg=NONE

