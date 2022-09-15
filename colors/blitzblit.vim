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

" highlight DiffAdd        ctermfg=0    ctermbg=2
" highlight DiffChange     ctermfg=0    ctermbg=3
" highlight DiffDelete     ctermfg=0    ctermbg=1
" highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

highlight ErrorMsg           ctermfg=1


"ErrorMsg, { "fg": s:red }) " error messages on the command line
"VertSplit, { "fg": s:vertsplit }) " the column separating vertically split windows
"Folded, { "fg": s:comment_grey }) " line used for closed folds
"FoldColumn, {}) " 'foldcolumn'
"SignColumn, {}) " column where signs are displayed
"IncSearch, { "fg": s:yellow, "bg": s:comment_grey }) " 'incsearch' highlighting; also used for the text replaced with ":s///c"
"LineNr, { "fg": s:gutter_fg_grey }) " Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
"CursorLineNr, {}) " Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
"MatchParen, { "fg": s:blue, "gui": "underline", "cterm": "underline" }) " The character under the cursor or just before it, if it is a paired bracket, and its match.
"ModeMsg, {}) " 'showmode' message (e.g., "-- INSERT --")
""
"MoreMsg, {}) " more-prompt
"NonText, { "fg": s:special_grey }) " '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
"Normal, { "fg": s:foreground, "bg": s:background }) " normal text
"PmenuSbar, { "bg": s:cursor_grey }) " Popup menu: scrollbar.
"PmenuThumb, { "bg": s:white }) " Popup menu: Thumb of the scrollbar.
"Question, { "fg": s:purple }) " hit-enter prompt and yes/no questions
"QuickFixLine, { "fg": s:black, "bg": s:yellow }) " Current quickfix item in the quickfix window.
"Search, { "fg": s:black, "bg": s:yellow }) " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
"SpecialKey, { "fg": s:special_grey }) " Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
"SpellBad, { "fg": s:red, "gui": "underline", "cterm": "underline" }) " Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
""SpellCap", { "fg": s:dark_yellow }) " Word that should start with a capital. This will be combined with the highlighting used otherwise.
""SpellLocal", { "fg": s:dark_yellow }) " Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
""SpellRare", { "fg": s:dark_yellow }) " Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
""StatusLine", { "fg": s:white, "bg": s:cursor_grey }) " status line of current window
""StatusLineNC", { "fg": s:comment_grey }) " status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
""StatusLineTerm", { "fg": s:white, "bg": s:cursor_grey }) " status line of current :terminal window
""StatusLineTermNC", { "fg": s:comment_grey }) " status line of non-current :terminal window
""TabLine", { "fg": s:comment_grey }) " tab pages line, not active tab page label
""TabLineFill", {}) " tab pages line, where there are no labels
""TabLineSel", { "fg": s:white }) " tab pages line, active tab page label
""Terminal", { "fg": s:white, "bg": s:black }) " terminal window (see terminal-size-color)
""Title", { "fg": s:green }) " titles for output from ":set all", ":autocmd" etc.
""Visual", { "bg": s:visual_grey }) " Visual mode selection
""VisualNOS", { "bg": s:visual_grey }) " Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
""WarningMsg", { "fg": s:yellow }) " warning messages
""WildMenu", { "fg": s:black, "bg": s:blue }) " current match in 'wildmenu' completion






" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.

" Invert selected lines in visual mode
highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=0    ctermbg=11

" Dim line numbers, comments, color columns, the status line, splits and sign
" columns.
if &background == "light"
  highlight ColorColumn  ctermfg=8    ctermbg=7
  highlight Comment      ctermfg=7
  highlight CursorLineNr ctermfg=8
  highlight Directory    ctermfg=4
  highlight FoldColumn   ctermfg=8    ctermbg=7
  highlight Folded       ctermfg=8    ctermbg=7
  highlight LineNr       ctermfg=7
  highlight Pmenu        ctermfg=0    ctermbg=7
  highlight PmenuSel     ctermfg=7    ctermbg=0
  highlight SignColumn                ctermbg=NONE
  highlight SpellCap     ctermfg=8    ctermbg=7
  highlight StatusLine   ctermfg=0    ctermbg=7       cterm=bold
  highlight StatusLineNC ctermfg=8    ctermbg=7       cterm=NONE
  highlight VertSplit    ctermfg=8    ctermbg=NONE    cterm=NONE
else
  highlight ColorColumn  ctermfg=7    ctermbg=8
  highlight Comment      ctermfg=8
  highlight CursorLineNr ctermfg=7
  highlight Directory    ctermfg=12
  highlight FoldColumn   ctermfg=7    ctermbg=8
  highlight Folded       ctermfg=7    ctermbg=8
  highlight LineNr       ctermfg=8
  highlight Pmenu        ctermfg=15   ctermbg=8
  highlight PmenuSel     ctermfg=8    ctermbg=15
  highlight SignColumn                ctermbg=NONE
  highlight SpellCap     ctermfg=7    ctermbg=8
  highlight StatusLine   ctermfg=15   ctermbg=8       cterm=bold
  highlight StatusLineNC ctermfg=7    ctermbg=8       cterm=NONE
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
