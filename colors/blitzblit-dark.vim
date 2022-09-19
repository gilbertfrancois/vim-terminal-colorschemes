" Name:         blitzblit-dark
" Description:  A modern VIM and NeoVIM colorscheme, inspired by onedark,
"               using only 16 cterm colors. It will match your terminal
"               color profile.
" Author:       Gilbert Francois Duivesteijn
" Maintainer:   Gilbert Francois Duivesteijn
" Website:      https://www.blitzblit.com
" License:      Apache License 2.0

highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "blitzblit-dark"

let s:black =      {'cterm': 0}
let s:d_red =      {'cterm': 1}
let s:d_green =    {'cterm': 2}
let s:d_yellow =   {'cterm': 3}
let s:d_blue =     {'cterm': 4}
let s:d_purple =   {'cterm': 5}
let s:d_cyan =     {'cterm': 6}
let s:silver =     {'cterm': 7}
let s:gray =       {'cterm': 8}
let s:l_red =      {'cterm': 9}
let s:l_green =    {'cterm': 10}
let s:l_yellow =   {'cterm': 11}
let s:l_blue =     {'cterm': 12}
let s:l_purple =   {'cterm': 13}
let s:l_cyan =     {'cterm': 14}
let s:white =      {'cterm': 15}
let s:none =       {'cterm': 'NONE'}

" ============================================================================== 
" =   set colour function
" ============================================================================== 
function SetColor(group, colorfg, colorbg, special) 
    let histring  = 'hi ' . a:group 
    let histring .= ' ctermfg=' . a:colorfg.cterm
    let histring .= ' ctermbg=' . a:colorbg.cterm
    let histring .= ' cterm=' . a:special.cterm
    execute histring
endfunction


call SetColor('Comment',        s:gray,     s:none,     s:none)
call SetColor('Constant',       s:l_cyan,   s:none,     s:none)
call SetColor('String',         s:l_green,  s:none,     s:none)
call SetColor('Character',      s:l_green,  s:none,     s:none)
call SetColor('Number',         s:d_yellow, s:none,     s:none) 
call SetColor('Boolean',        s:d_yellow, s:none,     s:none)
call SetColor('Float',          s:d_yellow, s:none,     s:none)

" highlight Comment            ctermfg=gray
" highlight Constant           ctermfg=l_cyan
" highlight String             ctermfg=l_green
" highlight Character          ctermfg=l_green
" highlight Number             ctermfg=d_yellow
" highlight Boolean            ctermfg=d_yellow
" highlight Float              ctermfg=d_yellow
highlight Identifier         ctermfg=l_red
highlight Function           ctermfg=l_blue
highlight Statement          ctermfg=l_purple
 
highlight Conditional        ctermfg=s:l_purple
highlight Repeat             ctermfg=s:l_purple
highlight Label              ctermfg=s:l_purple
highlight Operator           ctermfg=s:l_purple
highlight Keyword            ctermfg=s:l_red
highlight Exception          ctermfg=s:l_purple
highlight PreProc            ctermfg=s:l_yellow
highlight Include            ctermfg=s:l_blue
highlight Define             ctermfg=s:l_purple
highlight Macro              ctermfg=s:l_purple
highlight PreCondit          ctermfg=s:l_yellow
highlight Type               ctermfg=s:l_yellow
highlight StorageClass       ctermfg=s:l_yellow
highlight Structure          ctermfg=s:l_yellow
highlight Typedef            ctermfg=s:l_yellow
highlight Special            ctermfg=s:l_blue
highlight SpecialChar        ctermfg=s:d_yellow
highlight Tag                ctermfg=NONE
highlight Delimiter          ctermfg=NONE
highlight SpecialComment     ctermfg=s:gray
highlight Debug              ctermfg=NONE
highlight Underlined                                                 cterm=underline
" highlight Ignore
highlight Error              ctermfg=s:white          ctermbg=s:red
highlight Todo               ctermfg=s:l_purple

highlight Cursor             ctermfg=s:black           ctermbg=s:l_blue
highlight TermCursor                                                 cterm=reverse
highlight CursorLine                                                 cterm=underline
" highlight CursorLine                             ctermbg=s:gray
highlight DiffAdd            ctermfg=s:black           ctermbg=s:l_green
highlight DiffChange         ctermfg=s:black           ctermbg=s:l_yellow
highlight DiffDelete         ctermfg=s:black           ctermbg=s:l_red
highlight DiffText           ctermfg=s:black           ctermbg=s:l_yellow          cterm=bold
highlight ErrorMsg           ctermfg=s:d_red       ctermbg=NONE


highlight IncSearch          ctermfg=s:l_yellow          ctermbg=s:gray
highlight MatchParen         ctermfg=s:d_blue                              cterm=underline
highlight Question           ctermfg=s:l_purple
highlight QuickFixLine       ctermfg=s:black           ctermbg=s:l_yellow
" highlight Search         ctermfg=s:black    ctermbg=s:l_yellow
highlight Search             ctermfg=s:black           ctermbg=s:l_yellow
highlight SpecialKey         ctermfg=s:gray          
highlight SpellBad           ctermfg=s:l_red                              cterm=underline
highlight SpellCap           ctermfg=s:d_yellow
highlight SpellLocal         ctermfg=s:d_yellow
highlight SpellRare          ctermfg=s:d_yellow

highlight TabLine            ctermfg=s:black           ctermbg=s:silver          cterm=underline 
highlight TabLineFill                                                cterm=reverse
highlight TabLineSel                                                 cterm=bold
highlight Title              ctermfg=s:l_green
" highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse
highlight Visual                                 ctermbg=s:gray
highlight VisualNOS                              ctermbg=s:gray
highlight WarningMsg         ctermfg=s:l_yellow          ctermbg=NONE
highlight WildMenu           ctermfg=s:black           ctermbg=s:l_blue

" TODO
" PmenuSbar
" PmenuThumb

if &background == "light"
  highlight ColorColumn      ctermfg=s:gray          ctermbg=s:silver
  highlight Comment          ctermfg=s:silver
  highlight CursorLineNr     ctermfg=s:gray
  highlight Directory        ctermfg=s:d_blue
  highlight FoldColumn       ctermfg=s:gray          ctermbg=s:silver
  highlight Folded           ctermfg=s:gray          ctermbg=s:silver
  highlight LineNr           ctermfg=s:silver
  highlight Normal           ctermfg=s:black
  highlight NonText          ctermfg=s:silver
  highlight Pmenu            ctermfg=s:black           ctermbg=s:silver
  highlight PmenuSel         ctermfg=s:silver          ctermbg=s:black
  highlight SignColumn                           ctermbg=NONE
  highlight StatusLine       ctermfg=s:black           ctermbg=s:silver          cterm=bold
  highlight StatusLineNC     ctermfg=s:gray          ctermbg=s:silver          cterm=NONE
  highlight StatusLineTerm   ctermfg=s:black           ctermbg=s:silver          cterm=bold
  highlight StatusLineTermNC ctermfg=s:gray          ctermbg=s:silver          cterm=NONE
  highlight VertSplit        ctermfg=s:gray          ctermbg=NONE        cterm=NONE
else
  highlight ColorColumn      ctermfg=s:silver          ctermbg=s:gray
  highlight Comment          ctermfg=s:gray
  highlight CursorLineNr     ctermfg=s:silver
  highlight Directory        ctermfg=s:l_blue
  highlight FoldColumn       ctermfg=s:silver          ctermbg=s:gray
  highlight Folded           ctermfg=s:silver          ctermbg=s:gray
  highlight LineNr           ctermfg=s:gray
  highlight Normal           ctermfg=s:silver
  highlight NonText          ctermfg=s:gray
  highlight Pmenu            ctermfg=s:white          ctermbg=s:gray
  highlight PmenuSel         ctermfg=s:gray          ctermbg=s:white
  highlight SignColumn                           ctermbg=NONE
  highlight StatusLine       ctermfg=s:white          ctermbg=s:gray          cterm=bold
  highlight StatusLineNC     ctermfg=s:silver          ctermbg=s:gray          cterm=NONE
  highlight StatusLineTerm   ctermfg=s:white          ctermbg=s:gray          cterm=bold
  highlight StatusLineTermNC ctermfg=s:gray
  highlight VertSplit        ctermfg=s:silver          ctermbg=NONE        cterm=NONE
endif

" airblade/vim-gitgutter
highlight GitGutterAdd       ctermfg=s:l_green
highlight GitGutterChange    ctermfg=s:l_yellow
highlight GitGutterDelete    ctermfg=s:l_red

" lewis6991/gitsigns.nvim
hi link GitSignsAdd          GitGutterAdd
hi link GitSignsChange       GitGutterChange
hi link GitSignsDelete       GitGutterDelete

" mhinz/vim-signify
hi link SignifySignAdd       GitGutterAdd
hi link SignifySignChange    GitGutterChange
hi link SignifySignDelete    GitGutterDelete


highlight DiagnosticError    ctermfg=s:red
highlight DiagnosticWarn     ctermfg=s:d_yellow
highlight DiagnosticInfo     ctermfg=s:d_blue
highlight DiagnosticHint     ctermfg=s:d_cyan
highlight DiagnosticUnderlineError   ctermfg=s:d_red          cterm=underline
highlight DiagnosticUnderlineWarn    ctermfg=s:d_yellow          cterm=underline
highlight DiagnosticUnderlineInfo    ctermfg=s:d_blue          cterm=underline
highlight DiagnosticUnderlineHint    ctermfg=s:d_cyan          cterm=underline

" Must appear at the end of the file to work around this oddity:
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
