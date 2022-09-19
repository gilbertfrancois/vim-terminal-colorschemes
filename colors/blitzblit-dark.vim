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
let s:reverse =    {'cterm': 'reverse'}
let s:underline =  {'cterm': 'underline'}
let s:bold =       {'cterm': 'bold'}

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

call SetColor('Identifier',     s:l_red,    s:none,     s:none)
call SetColor('Function',       s:l_blue,   s:none,     s:none)

call SetColor('Statement',      s:l_purple, s:none,     s:none)
call SetColor('Conditional',    s:l_purple, s:none,     s:none)
call SetColor('Repeat',         s:l_purple, s:none,     s:none)
call SetColor('Label',          s:l_purple, s:none,     s:none)
call SetColor('Operator',       s:l_purple, s:none,     s:none)
call SetColor('Keyword',        s:l_red,    s:none,     s:none)
call SetColor('Exception',      s:l_purple, s:none,     s:none)
call SetColor('PreProc',        s:l_yellow, s:none,     s:none)
call SetColor('Include',        s:l_blue,   s:none,     s:none)
call SetColor('Define',         s:l_purple, s:none,     s:none)
call SetColor('Macro',          s:l_purple, s:none,     s:none)
call SetColor('PreCondit',      s:l_yellow, s:none,     s:none)

call SetColor('Type',           s:l_yellow, s:none,     s:none)
call SetColor('StorageClass',   s:l_yellow, s:none,     s:none)
call SetColor('Structure',      s:l_yellow, s:none,     s:none)
call SetColor('Typedef',        s:l_yellow, s:none,     s:none)

call SetColor('Special',        s:l_blue,   s:none,     s:none)
call SetColor('SpecialChar',    s:l_yellow, s:none,     s:none)
call SetColor('Tag',            s:none,     s:none,     s:none)
call SetColor('Delimiter',      s:none,     s:none,     s:none)
call SetColor('SpecialComment', s:gray,     s:none,     s:none)
call SetColor('Debug',          s:none,     s:none,     s:none)

call SetColor('Underlined',     s:none,     s:none,     s:underline)
call SetColor('Error',          s:white,    s:red,      s:none)
call SetColor('Todo',           s:l_purple, s:none,     s:none)
call SetColor('Cursor',         s:black,    s:l_blue,   s:none)
call SetColor('TermCursor',     s:none,     s:none,     s:reverse)
call SetColor('CursorLine',     s:none,     s:none,     s:underline)

call SetColor('DiffAdd',        s:black,    s:l_green,  s:none)
call SetColor('DiffChange',     s:black,    s:l_yellow, s:none)
call SetColor('DiffDelete',     s:black,    s:l_red,    s:none)
call SetColor('DiffText',       s:black,    s:l_yellow, s:bold)
call SetColor('ErrorMsg',       s:d_red,    s:none,     s:none)

call SetColor('IncSearch',      s:l_yellow, s:gray,     s:none)
call SetColor('MatchParen',     s:d_blue,   s:none,     s:underline)
call SetColor('Question',       s:l_purple, s:none,     s:none)
call SetColor('QuickFixLine',   s:black,    s:l_yellow, s:none)

call SetColor('Search',         s:black,    s:l_yellow, s:none)
call SetColor('SpecialKey',     s:gray,     s:none,     s:none)
call SetColor('SpellBad',       s:l_red,    s:none,     s:underline)
call SetColor('SpellCap',       s:d_yellow, s:none,     s:none)
call SetColor('SpellLocal',     s:d_yellow, s:none,     s:none)
call SetColor('SpellRare',      s:d_yellow, s:none,     s:none)
" call SetColor('CursorLine                             ctermbg=s:gray

call SetColor('TabLine',        s:black,    s:silver,   s:underline)
call SetColor('TabLineFill',    s:none,     s:none,     s:reverse)
call SetColor('TabLineSel',     s:none,     s:none,     s:bold)
call SetColor('Title',          s:l_green,  s:none,     s:none)
call SetColor('Visual',         s:none,     s:gray,     s:none)
call SetColor('VisualNOS',      s:none,     s:gray,     s:none)
call SetColor('WarningMsg',     s:l_yellow, s:none,     s:none)
call SetColor('WildMenu',       s:black,    s:l_blue,   s:none)

" TODO
" PmenuSbar
" PmenuThumb

call SetColor('ColorColumn',    s:silver,   s:gray,     s:none)
call SetColor('Comment',        s:gray,     s:none,     s:none)
call SetColor('CursorLineNr',   s:silver,   s:none,     s:none)
call SetColor('Directory',      s:l_blue,   s:none,     s:none)
call SetColor('FoldColumn',     s:silver,   s:gray,     s:none)
call SetColor('Folded',         s:silver,   s:gray,     s:none)
call SetColor('LineNr',         s:gray,     s:none,     s:none)
call SetColor('Normal',         s:silver,   s:none,     s:none)
call SetColor('NonText',        s:gray,     s:none,     s:none)
call SetColor('Pmenu',          s:white,    s:gray,     s:none)
call SetColor('PmenuSel',       s:gray,     s:white,    s:none)
call SetColor('SignColumn',     s:none,     s:none,     s:none)

call SetColor('StatusLine',     s:white,    s:gray,     s:bold)
call SetColor('StatusLineNC',   s:silver,   s:gray,     s:none)
call SetColor('StatusLineTerm', s:white,    s:gray,     s:bold)
call SetColor('StatusLineTermNC', s:gray,   s:none,     s:none)
call SetColor('VertSplit',      s:silver,   s:none,     s:none)

" airblade/vim-gitgutter
call SetColor('GitGutterAdd',   s:l_green,  s:none,     s:none)
call SetColor('GitGutterChange',s:l_yellow, s:none,     s:none)
call SetColor('GitGutterDelete',s:l_red,    s:none,     s:none)

" lewis6991/gitsigns.nvim
hi link GitSignsAdd          GitGutterAdd
hi link GitSignsChange       GitGutterChange
hi link GitSignsDelete       GitGutterDelete

" mhinz/vim-signify
hi link SignifySignAdd       GitGutterAdd
hi link SignifySignChange    GitGutterChange
hi link SignifySignDelete    GitGutterDelete


call SetColor('DiagnosticError',            s:l_red,    s:none,     s:none)
call SetColor('DiagnosticWarn',             s:d_yellow, s:none,     s:none)
call SetColor('DiagnosticInfo',             s:d_blue,   s:none,     s:none)
call SetColor('DiagnosticHint',             s:d_cyan,   s:none,     s:none)
call SetColor('DiagnosticUnderlineError',   s:d_red,    s:none,     s:underline)
call SetColor('DiagnosticUnderlineWarn',    s:d_yellow, s:none,     s:underline)
call SetColor('DiagnosticUnderlineInfo',    s:d_blue,   s:none,     s:underline)
call SetColor('DiagnosticUnderlineHint',    s:d_cyan,   s:none,     s:underline)

" Must appear at the end of the file to work around this oddity:
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
