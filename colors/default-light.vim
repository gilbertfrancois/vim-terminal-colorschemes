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


highlight TermCursor        cterm=reverse

highlight Comment           ctermfg=8
highlight Constant          ctermfg=14
highlight String            ctermfg=10
highlight Character         ctermfg=10
highlight Number            ctermfg=3
highlight Boolean           ctermfg=3
highlight Float             ctermfg=3
highlight Identifier        ctermfg=9
highlight Function          ctermfg=12
highlight Statement         ctermfg=13

highlight Conditional       ctermfg=13
highlight Repeat            ctermfg=13
highlight Label             ctermfg=13
highlight Operator          ctermfg=13
highlight Keyword           ctermfg=9
highlight Exception         ctermfg=13
highlight PreProc           ctermfg=11
highlight Include           ctermfg=12
highlight Define            ctermfg=13
highlight Macro             ctermfg=13
highlight PreCondit         ctermfg=11
highlight Type              ctermfg=11
highlight StorageClass      ctermfg=11
highlight Structure         ctermfg=11
highlight Typedef           ctermfg=11
highlight Special           ctermfg=12
highlight SpecialChar       ctermfg=3
highlight Tag               ctermfg=NONE
highlight Delimiter         ctermfg=NONE
highlight SpecialComment    ctermfg=8
highlight Debug             ctermfg=NONE
highlight Underlined        cterm=underline
highlight Ignore
highlight Error             ctermfg=9
highlight Todo              ctermfg=13



" " Highlighting Groups (descriptions and ordering from `:h highlight-groups`) {{{
" call s:h("ColorColumn", { "bg": s:cursor_grey }) " used for the columns set with 'colorcolumn'
" call s:h("Conceal", {}) " placeholder characters substituted for concealed text (see 'conceallevel')
" call s:h("Cursor", { "fg": s:black, "bg": s:blue }) " the character under the cursor
" call s:h("CursorIM", {}) " like Cursor, but used when in IME mode
" call s:h("CursorColumn", { "bg": s:cursor_grey }) " the screen column that the cursor is in when 'cursorcolumn' is set
" if &diff
"   " Don't change the background color in diff mode
"   call s:h("CursorLine", { "gui": "underline" }) " the screen line that the cursor is in when 'cursorline' is set
" else
"   call s:h("CursorLine", { "bg": s:cursor_grey }) " the screen line that the cursor is in when 'cursorline' is set
" endif
" call s:h("Directory", { "fg": s:blue }) " directory names (and other special names in listings)
" call s:h("DiffAdd", { "bg": s:green, "fg": s:black }) " diff mode: Added line
" call s:h("DiffChange", { "fg": s:yellow, "gui": "underline", "cterm": "underline" }) " diff mode: Changed line
" call s:h("DiffDelete", { "bg": s:red, "fg": s:black }) " diff mode: Deleted line
" call s:h("DiffText", { "bg": s:yellow, "fg": s:black }) " diff mode: Changed text within a changed line
" if get(g:, 'onedark_hide_endofbuffer', 0)
"     " If enabled, will style end-of-buffer filler lines (~) to appear to be hidden.
"     call s:h("EndOfBuffer", { "fg": s:black }) " filler lines (~) after the last line in the buffer
" endif
" call s:h("ErrorMsg", { "fg": s:red }) " error messages on the command line
" call s:h("VertSplit", { "fg": s:vertsplit }) " the column separating vertically split windows
" call s:h("Folded", { "fg": s:comment_grey }) " line used for closed folds
" call s:h("FoldColumn", {}) " 'foldcolumn'
" call s:h("SignColumn", {}) " column where signs are displayed
" call s:h("IncSearch", { "fg": s:yellow, "bg": s:comment_grey }) " 'incsearch' highlighting; also used for the text replaced with ":s///c"
" call s:h("LineNr", { "fg": s:gutter_fg_grey }) " Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
" call s:h("CursorLineNr", {}) " Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
" call s:h("MatchParen", { "fg": s:blue, "gui": "underline", "cterm": "underline" }) " The character under the cursor or just before it, if it is a paired bracket, and its match.
" call s:h("ModeMsg", {}) " 'showmode' message (e.g., "-- INSERT --")
" call s:h("MoreMsg", {}) " more-prompt
" call s:h("NonText", { "fg": s:special_grey }) " '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
" call s:h("Normal", { "fg": s:foreground, "bg": s:background }) " normal text
" call s:h("Pmenu", { "fg": s:white, "bg": s:menu_grey }) " Popup menu: normal item.
" call s:h("PmenuSel", { "fg": s:cursor_grey, "bg": s:blue }) " Popup menu: selected item.
" call s:h("PmenuSbar", { "bg": s:cursor_grey }) " Popup menu: scrollbar.
" call s:h("PmenuThumb", { "bg": s:white }) " Popup menu: Thumb of the scrollbar.
" call s:h("Question", { "fg": s:purple }) " hit-enter prompt and yes/no questions
" call s:h("QuickFixLine", { "fg": s:black, "bg": s:yellow }) " Current quickfix item in the quickfix window.
" call s:h("Search", { "fg": s:black, "bg": s:yellow }) " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
" call s:h("SpecialKey", { "fg": s:special_grey }) " Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
" call s:h("SpellBad", { "fg": s:red, "gui": "underline", "cterm": "underline" }) " Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
" call s:h("SpellCap", { "fg": s:dark_yellow }) " Word that should start with a capital. This will be combined with the highlighting used otherwise.
" call s:h("SpellLocal", { "fg": s:dark_yellow }) " Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
" call s:h("SpellRare", { "fg": s:dark_yellow }) " Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
" call s:h("StatusLine", { "fg": s:white, "bg": s:cursor_grey }) " status line of current window
" call s:h("StatusLineNC", { "fg": s:comment_grey }) " status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
" call s:h("StatusLineTerm", { "fg": s:white, "bg": s:cursor_grey }) " status line of current :terminal window
" call s:h("StatusLineTermNC", { "fg": s:comment_grey }) " status line of non-current :terminal window
" call s:h("TabLine", { "fg": s:comment_grey }) " tab pages line, not active tab page label
" call s:h("TabLineFill", {}) " tab pages line, where there are no labels
" call s:h("TabLineSel", { "fg": s:white }) " tab pages line, active tab page label
" call s:h("Terminal", { "fg": s:white, "bg": s:black }) " terminal window (see terminal-size-color)
" call s:h("Title", { "fg": s:green }) " titles for output from ":set all", ":autocmd" etc.
" call s:h("Visual", { "bg": s:visual_grey }) " Visual mode selection
" call s:h("VisualNOS", { "bg": s:visual_grey }) " Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
" call s:h("WarningMsg", { "fg": s:yellow }) " warning messages
" call s:h("WildMenu", { "fg": s:black, "bg": s:blue }) " current match in 'wildmenu' completion





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

" Reference
" ----------------------------------------
" ColorColumn	
" Conceal	
" Cursor
" lCursor		
" CursorIM
" CursorColumn	
" CursorLine	
" Directory
" DiffAdd	
" DiffChange	
" DiffDelete
" DiffText
" EndOfBuffer	
" TermCursor
" TermCursorNC	
" ErrorMsg
" WinSeparator	
" Folded		
" FoldColumn
" SignColumn	
" IncSearch
" Substitute
" LineNr	
" LineNrAbove
" LineNrBelow
" CursorLineNr	
" CursorLineSign
" CursorLineFold	
" MatchParen	
" ModeMsg	
" MsgArea
" MsgSeparator	
" MoreMsg		
" NonText	
" Normal
" NormalFloat	
" NormalNC
" Pmenu
" PmenuSel	
" PmenuSbar
" PmenuThumb	
" Question
" QuickFixLine	
" Search		
" SpecialKey
" SpellBad
" SpellCap	
" SpellLocal
" SpellRare
" StatusLine	
" StatusLineNC	
" TabLine		
" TabLineFill
" TabLineSel
" Title	
" Visual
" VisualNOS	
" WarningMsg
" Whitespace	
" WildMenu	
