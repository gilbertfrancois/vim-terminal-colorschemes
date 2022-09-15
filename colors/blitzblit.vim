highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "blitzblit"


" " highlight Error          ctermfg=15 ctermbg=9
" " highlight Todo           ctermfg=0 ctermbg=11
" highlight Conceal        ctermfg=7 ctermbg=7
" highlight Constant       ctermfg=14
" highlight CursorColumn   ctermbg=7
" highlight CursorLine     cterm=underline
" highlight Error          ctermfg=1
" highlight ErrorMsg       ctermfg=1
" highlight Identifier     ctermfg=1      cterm=NONE
" highlight Ignore         ctermfg=15
" highlight IncSearch      cterm=reverse
" highlight MatchParen     ctermbg=14
" highlight ModeMsg        cterm=bold
" highlight MoreMsg        ctermfg=2
" highlight NonText        ctermfg=12
" highlight PmenuSbar      ctermbg=8
" highlight PmenuThumb     ctermbg=0
" highlight PreProc        ctermfg=5
" highlight Question       ctermfg=2
" highlight Special        ctermfg=5
" highlight SpecialKey     ctermfg=4
" highlight SpellBad       ctermbg=9
" highlight SpellLocal     ctermbg=14
" highlight SpellRare      ctermbg=13
" highlight Statement      ctermfg=3
" highlight TabLine        cterm=underline ctermfg=0 ctermbg=7
" highlight TabLineFill    cterm=reverse
" highlight TabLineSel     cterm=bold
" highlight TermCursor     cterm=reverse
" highlight Title          ctermfg=5
" highlight Type           ctermfg=2
" highlight Underlined     cterm=underline ctermfg=5
" highlight WarningMsg     ctermfg=1 ctermbg=NONE
" highlight WildMenu       ctermfg=0 ctermbg=11



highlight Comment            ctermfg=8
highlight Constant           ctermfg=14
highlight String             ctermfg=10
highlight Character          ctermfg=10
highlight Number             ctermfg=3
highlight Boolean            ctermfg=3
highlight Float              ctermfg=3
highlight Identifier         ctermfg=9
highlight Function           ctermfg=12
highlight Statement          ctermfg=13
 
highlight Conditional        ctermfg=13
highlight Repeat             ctermfg=13
highlight Label              ctermfg=13
highlight Operator           ctermfg=13
highlight Keyword            ctermfg=9
highlight Exception          ctermfg=13
highlight PreProc            ctermfg=11
highlight Include            ctermfg=12
highlight Define             ctermfg=13
highlight Macro              ctermfg=13
highlight PreCondit          ctermfg=11
highlight Type               ctermfg=11
highlight StorageClass       ctermfg=11
highlight Structure          ctermfg=11
highlight Typedef            ctermfg=11
highlight Special            ctermfg=12
highlight SpecialChar        ctermfg=3
highlight Tag                ctermfg=NONE
highlight Delimiter          ctermfg=NONE
highlight SpecialComment     ctermfg=8
highlight Debug              ctermfg=NONE
highlight Underlined                                                 cterm=underline
" highlight Ignore
highlight Error              ctermfg=9
highlight Todo               ctermfg=13

highlight Cursor             ctermfg=0           ctermbg=12
highlight TermCursor                                                 cterm=reverse
highlight CursorLine                                                 cterm=underline
highlight DiffAdd            ctermfg=0           ctermbg=10
highlight DiffChange         ctermfg=0           ctermbg=11
highlight DiffDelete         ctermfg=0           ctermbg=9
highlight DiffText           ctermfg=0           ctermbg=11          cterm=bold
highlight ErrorMsg           ctermfg=1

highlight IncSearch          ctermfg=11          ctermbg=8
highlight MatchParen         ctermfg=4                               cterm=underline
highlight Question           ctermfg=13
highlight QuickFixLine       ctermfg=0           ctermbg=11
" highlight Search         ctermfg=0    ctermbg=11
highlight Search             ctermfg=0           ctermbg=11
highlight SpecialKey         ctermfg=8           
highlight SpellBad           ctermfg=9                               cterm=underline
highlight SpellCap           ctermfg=3
highlight SpellLocal         ctermfg=3
highlight SpellRare          ctermfg=3

highlight TabLine            ctermfg=0           ctermbg=7           cterm=underline 
highlight TabLineFill                                                cterm=reverse
highlight TabLineSel                                                 cterm=bold
highlight Title              ctermfg=10
" highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse
highlight Visual                                 ctermbg=8
highlight VisualNOS                              ctermbg=8
highlight WarningMsg         ctermfg=11
highlight WildMenu           ctermfg=0           ctermbg=12

" TODO
" PmenuSbar
" PmenuThumb

if &background == "light"
  highlight ColorColumn  ctermfg=8    ctermbg=7
  highlight Comment      ctermfg=7
  highlight CursorLineNr ctermfg=8
  highlight Directory    ctermfg=4
  highlight FoldColumn   ctermfg=8    ctermbg=7
  highlight Folded       ctermfg=8    ctermbg=7
  highlight LineNr       ctermfg=7
  highlight Normal       ctermfg=0
  highlight NonText      ctermfg=7
  highlight Pmenu        ctermfg=0    ctermbg=7
  highlight PmenuSel     ctermfg=7    ctermbg=0
  highlight SignColumn                ctermbg=NONE
  highlight StatusLine   ctermfg=0    ctermbg=7       cterm=bold
  highlight StatusLineNC ctermfg=8    ctermbg=7       cterm=NONE
  highlight StatusLineTerm   ctermfg=0           ctermbg=7           cterm=bold
  highlight StatusLineTermNC ctermfg=8           ctermbg=7           cterm=NONE
  highlight VertSplit    ctermfg=8    ctermbg=NONE    cterm=NONE
else
  highlight ColorColumn  ctermfg=7    ctermbg=8
  highlight Comment      ctermfg=8
  highlight CursorLineNr ctermfg=7
  highlight Directory    ctermfg=12
  highlight FoldColumn   ctermfg=7    ctermbg=8
  highlight Folded       ctermfg=7    ctermbg=8
  highlight LineNr       ctermfg=8
  highlight Normal       ctermfg=15
  highlight NonText      ctermfg=8
  highlight Pmenu        ctermfg=15   ctermbg=8
  highlight PmenuSel     ctermfg=8    ctermbg=15
  highlight SignColumn                ctermbg=NONE
  highlight StatusLine   ctermfg=15   ctermbg=8       cterm=bold
  highlight StatusLineNC ctermfg=7    ctermbg=8       cterm=NONE
  highlight StatusLineTerm   ctermfg=15          ctermbg=8           cterm=bold
  highlight StatusLineTermNC ctermfg=8
  highlight VertSplit    ctermfg=7    ctermbg=NONE    cterm=NONE
endif

" airblade/vim-gitgutter
highlight GitGutterAdd      ctermfg=10
highlight GitGutterChange   ctermfg=11
highlight GitGutterDelete   ctermfg=9

" lewis6991/gitsigns.nvim
hi link GitSignsAdd    GitGutterAdd
hi link GitSignsChange GitGutterChange
hi link GitSignsDelete GitGutterDelete

" mhinz/vim-signify
hi link SignifySignAdd    GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete
