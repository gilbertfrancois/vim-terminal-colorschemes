" Name:       Intellij Light
" Author:     Gilbert Francois Duivesteijn
" Maintainer: Gilbert Francois Duivesteijn
" License:    Apache
" xterm-256color reference: https://gist.github.com/jasonm23/2868981
" https://vim.fandom.com/wiki/256_colors_in_vim
" https://github.com/srcery-colors/srcery-vim/blob/master/colors/srcery.vim
" https://github.com/jonathanfilip/vim-lucius
"
" 

unlet! g:colors_name
hi clear
if exists("syntax_on")
    syntax reset
endif

set background=light
let colors_name = "intellij-light-ref"

" set t_Co=256

" For 256 color terminals, avoid using colour numbers below 15, because
" they can be changed by custom terminal colour themes.
"
" ============================================================================== 
" =   colour definitions
" ============================================================================== 
let _black =       {'cterm': 16, 'gui': '#000000'}
let _red =         {'cterm': 88, 'gui': '#800000'}
let _green =       {'cterm': 28, 'gui': '#008000'}
let _yellow =      {'cterm':228, 'gui': '#808000'}
let _blue =        {'cterm': 18, 'gui': '#0000B2'}
let _purple =      {'cterm': 91, 'gui': '#660099'}
let _cyan =        {'cterm': 30, 'gui': '#008080'}
let _silver =      {'cterm':251, 'gui': '#c0c0c0'}
let _gray =        {'cterm':244, 'gui': '#808080'}
let _lightred =    {'cterm':196, 'gui': '#ff0000'}
let _lightgreen =  {'cterm': 46, 'gui': '#00ff00'}
let _lightyellow = {'cterm':230, 'gui': '#ffff00'}
let _lightblue =   {'cterm': 20, 'gui': '#0000D7'}
let _lightpurple = {'cterm':201, 'gui': '#ff00ff'}
let _lightcyan =   {'cterm': 51, 'gui': '#00ffff'}
let _white =       {'cterm':231, 'gui': '#ffffff'}
let _gray1 =       {'cterm':  8, 'gui': '#808080'}
let _gray2 =       {'cterm':  8, 'gui': '#808080'}
let _gray3 =       {'cterm':  8, 'gui': '#808080'}
let _gray4 =       {'cterm':  8, 'gui': '#808080'}
let _gray5 =       {'cterm':  8, 'gui': '#808080'}
let _gray6 =       {'cterm':  8, 'gui': '#808080'}
let _gray7 =       {'cterm':  8, 'gui': '#808080'}
let _gray8 =       {'cterm':  8, 'gui': '#808080'}
let _gray =        {'cterm':  8, 'gui': '#808080'}
let _none =        {'cterm':      'NONE', 'gui': 'NONE'}
let _italic =      {'cterm':    'italic', 'gui': 'italic'}
let _bold =        {'cterm':      'bold', 'gui': 'bold'}
let _underlined =  {'cterm': 'underline', 'gui': 'underline'}
let _undercurl =   {'cterm': 'undercurl', 'gui': 'undercurl'}

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
  

" *Comment          any comment
call SetColor('Comment', _silver, _none, _italic)
" *Constant         any constant
call SetColor('Constant', _purple, _none, _italic)
"  String           a string constant
call SetColor('String', _cyan, _none, _bold)
"  Character        a character constant: 'c', '\n'
call SetColor('Character', _blue, _none, _bold)
"  Number           a number constant: 234, 0xff
call SetColor('Number', _lightblue, _none, _none)
"  Boolean          a boolean constant: TRUE, false
call SetColor('Boolean', _lightblue, _none, _none)
"  Float            a floating point constant: 2.3e10
call SetColor('Float', _lightblue, _none, _none)

" *Identifier       any variable name
call SetColor('Identifier', _black, _none, _none)
"  Function         function name (also: methods for classes)
call SetColor('Function', _black, _none, _none)

" *Statement        any statement
call SetColor('Statement', _blue, _none, _bold)
"  Conditional      if, then, else, endif, switch, etc.
call SetColor('Conditional', _blue, _none, _bold)
"  Repeat           for, do, while, etc.
call SetColor('Repeat', _blue, _none, _bold)
"  Label            case, default, etc.
call SetColor('Label', _blue, _none, _bold)
"  Operator         sizeof, +, *, etc.
call SetColor('Operator', _black, _none, _none)
"  Keyword          any other keyword
call SetColor('Keyword', _blue, _none, _bold)
"  Exception        try, catch, throw
call SetColor('Exception', _blue, _none, _bold)

" *PreProc          generic Preprocessor
call SetColor('PreProc', _cyan, _none, _none)
"  Include          preprocessor #include
call SetColor('Include', _blue, _none, _bold)
"  Define           preprocessor #define
"  Macro            same as Define
"  PreCondit        preprocessor #if, #else, #endif, etc.
call SetColor('PreCondit', _gray, _none, _none)

" *Type             int, long, char, etc.
call SetColor('Type', _black, _none, _none)
"  StorageClass     static, register, volatile, etc.
call SetColor('StorageClass', _black, _none, _none)
"  Structure        struct, union, enum, etc.
call SetColor('Structure', _black, _none, _none)
"  Typedef          A typedef
call SetColor('Typedef', _black, _none, _none)

" *Special          any special symbol
call SetColor('Special', _black, _none, _none)
"  SpecialChar      special character in a constant
call SetColor('SpecialChar', _black, _none, _none)
"  Tag              you can use CTRL-] on this
call SetColor('Tag', _black, _none, _none)
"  Delimiter        character that needs attention
call SetColor('Delimiter', _black, _none, _none)
"  SpecialComment   special things inside a comment
call SetColor('SpecialComment', _black, _none, _none)
"  Debug            debugging statements
call SetColor('Debug', _black, _none, _none)

" *Underlined       text that stands out, HTML links
call SetColor('Underlined', _none, _none, _underlined)

" *Ignore           left blank, hidden  |hl-Ignore|

" *Error            any erroneous construct
call SetColor('Error', _lightred, _none, _underlined)
" *Todo     anything that needs extra attention; mostly the
            " keywords TODO FIXME and XXX
call SetColor('Todo', _black, _lightyellow, _underlined)

" ColorColumn     used for the columns set with 'colorcolumn'
call SetColor('ColorColumn', _none, _lightyellow, _none)
"
" Conceal         placeholder characters substituted for concealed
"                 text (see 'conceallevel')
" Cursor          the character under the cursor 
call SetColor('Cursor', _black, _white, _none)
" lCursor         the character under the cursor when language-mapping is used (see 'guicursor')
call SetColor('lCursor', _black, _white, _none)
" CursorIM        like Cursor, but used when in IME mode CursorIM
" CursorColumn    the screen column that the cursor is in when 'cursorcolumn' is set
call SetColor('CursorColumn', _none, _none, _none)
" CursorLine      the screen line that the cursor is in when 'cursorline' is set
call SetColor('CursorLine',   _none, _lightyellow, _none)
" Directory       directory names (and other special names in listings)
call SetColor('Directory',   _blue, _none, _none)
" DiffAdd         diff mode: Added line diff.txt
call SetColor('DiffAdd', _green, _none, _none)
" DiffChange      diff mode: Changed line diff.txt
call SetColor('DiffChange', _purple, _none, _none)
" DiffDelete      diff mode: Deleted line diff.txt
call SetColor('DiffDelete', _red, _none, _none)
" DiffText        diff mode: Changed text within a changed line diff.txt
call SetColor('DiffText', _black, _none, _none)
" EndOfBuffer     filler lines (~) after the last line in the buffer.  By default, this is highlighted like hl-NonText.
call SetColor('EnfOfBuffer', _none, _white, _none)
" ErrorMsg        error messages on the command line
call SetColor('ErrorMsg', _red, _none, _none)
" VertSplit       the column separating vertically split windows
call SetColor('VertSplit', _silver, _silver, _none)
" Folded          line used for closed folds
call SetColor('Folded', _gray, _silver, _none)
" FoldColumn      'foldcolumn'
call SetColor('FoldColumn', _blue, _white, _none)
" SignColumn      column where signs are displayed
call SetColor('SignColumn', _none, _none, _none)
" IncSearch       'incsearch' highlighting; also used for the text replaced with
" LineNr          Line number for :number and :# commands, and when 'number' or 'relativenumber' option is set.
call SetColor('LineNr', _silver, _none, _none)
" LineNrAbove     Line number for when the 'relativenumber' option is set, above the cursor line.
call SetColor('LineNrAbove', _silver, _none, _none)
" LineNrBelow     Line number for when the 'relativenumber' option is set, below the cursor line.
call SetColor('LineNrBelow', _silver, _none, _none)
" CursorLineNr    Like LineNr when 'cursorline' is set and 'cursorlineopt' is set to number or both, or 'relativenumber' is set, for the cursor line.
call SetColor('CursorLineNr', _silver, _lightyellow, _none)
" MatchParen      The character under the cursor or just before it, if it is a paired bracket, and its match. pi_paren.txt
call SetColor('MatchParen', _black, _yellow, _none)
" ModeMsg         'showmode' message (e.g., '-- INSERT --')
call SetColor('ModeMsg', _black, _none, _bold)
" MoreMsg         more-prompt
" NonText         '@' at the end of the window, characters from 'showbreak'
"                 and other characters that do not really exist in the text
"                 (e.g., '>' displayed when a double-wide character doesn't fit at the end of the line).
call SetColor('NonText', _white, _white, _none)
" Normal          normal text
call SetColor('Normal', _black, _white, _none)

" Pmenu           Popup menu: normal item.
call SetColor('Pmenu', _black, _silver, _none)
" PmenuSel        Popup menu: selected item.
call SetColor('PmenuSel', _white, _lightblue, _none)
" PmenuSbar       Popup menu: scrollbar.
call SetColor('PmenuSbar', _gray, _gray, _none)
" PmenuThumb      Popup menu: Thumb of the scrollbar.
call SetColor('PmenuThumb', _black, _black, _none)
" Question        hit-enter prompt and yes/no questions
" QuickFixLine    Current quickfix item in the quickfix window.
" Search          Last search pattern highlighting (see 'hlsearch').
"                 Also used for similar items that need to stand out.
call SetColor('PmenuThumb', _none, _yellow, _none)
" SpecialKey      Meta and special keys listed with ':map', also for text used
"                 to show unprintable characters in the text, 'listchars'.
"                 Generally: text that is displayed differently from what it
"                 really is.
" SpellBad        Word that is not recognized by the spellchecker. spell
"                 This will be combined with the highlighting used otherwise.
" SpellCap        Word that should start with a capital. spell
"                 This will be combined with the highlighting used otherwise.
" SpellLocal      Word that is recognized by the spellchecker as one that is
"                 used in another region. spell
"                 This will be combined with the highlighting used otherwise.
" SpellRare       Word that is recognized by the spellchecker as one that is
"                 hardly ever used. spell
"                 This will be combined with the highlighting used otherwise.
" StatusLine      status line of current window
call SetColor('StatusLine', _black, _silver, _none)
" StatusLineNC    status lines of not-current windows
call SetColor('StatusLineNC', _silver, _gray, _none)
"                 Note: if this is equal to 'StatusLine' Vim will use '^^^' in
"                 the status line of the current window.
" StatusLineTerm  status line of current window, if it is a terminal window.
" StatusLineTermNC   status lines of not-current windows that is a terminal
"                 window.
" TabLine         tab pages line, not active tab page label
" TabLineFill     tab pages line, where there are no labels
" TabLineSel      tab pages line, active tab page label
" Terminal        terminal window (see terminal-size-color)
" Title           titles for output from ':set all', ':autocmd' etc.
call SetColor('Title', _black, _none, _none)
" Visual          Visual mode selection
call SetColor('Visual', _white, _blue, _none)
" VisualNOS       Visual mode selection when vim is 'Not Owning the Selection'.
"                 Only X11 Gui's gui-x11 and xterm-clipboard supports this.
call SetColor('VisualNOS', _white, _blue, _none)
" WarningMsg      warning messages
" WildMenu        current match in 'wildmenu' completion


" Python
call SetColor('docstring', _gray, _none, _italic)
call SetColor('PythonClassVar', _purple, _none, _none)
call SetColor('PythonOperator', _blue, _none, _bold)
" hi pythonBuiltin            ctermfg=4
" hi pythonBuiltinFunc        ctermfg=4
" hi pythonBuiltinObj         ctermfg=6
" hi pythonCustomFunc         ctermfg=4
" hi pythonDecorator          ctermfg=14
" hi pythonInclude            ctermfg=4  " Python imports, etc
" hi pythonInstances          ctermfg=4  
" hi pythonStatement          ctermfg=4
" hi pythonConditional        ctermfg=4
" hi pythonRepeat             ctermfg=4
" hi pythonOperator           ctermfg=4
" hi pythonException          ctermfg=4
" hi pythonBuiltinConstant    ctermfg=4
" hi pythonBoolean            ctermfg=4
" hi pythonAttribute          ctermfg=3
" hi pythonString             ctermfg=2
" hi pythonQuotes             ctermfg=2
" hi docstring                ctermfg=2
" hi pythonComment            ctermfg=7

autocmd Filetype python call SetDocStringColors()
function SetDocStringColors()
     syn match docstring /"""\_.\{-}"""/
 endfunction
    
" NerdTree
call SetColor('NerdTreeDirSlash', _none, _none, _none)
call SetColor('NerdTreeCWD', _gray, _none, _none)


" TODO
"
" " Javascript
" hi javaScriptReserved       ctermfg=126
" hi javaScriptNumber         ctermfg=020
" hi javaScriptFuncArg        ctermfg=055
" hi javascriptBlock          ctermfg=030
" hi javascriptIdentifier     ctermfg=126
" hi javascriptBOMHistoryProp ctermfg=016
" hi javascriptObjectLabel    ctermfg=016


" " HTML
" hi htmlArg                  ctermfg=030
" hi htmlString               ctermfg=020
" hi htmlComment              ctermfg=244
" hi htmlTag                  ctermfg=244
" hi link htmlCommentPart     htmlComment
" hi link htmlTagN            htmlTag
" hi link htmlEndTag          htmlTag

" LspDiagnosticsDefaultError
"   Used as the base highlight group.
"   Other LspDiagnostic highlights link to this by default (except Underline)

" LspDiagnosticsDefaultWarning
"   Used as the base highlight group.
"   Other LspDiagnostic highlights link to this by default (except Underline)

" LspDiagnosticsDefaultInformation
"   Used as the base highlight group.
"   Other LspDiagnostic highlights link to this by default (except Underline)

" LspDiagnosticsDefaultHint
"   Used as the base highlight group.
"   Other LspDiagnostic highlights link to this by default (except Underline)

" LspDiagnosticsVirtualTextError
"   Used for "Error" diagnostic virtual text.

" LspDiagnosticsVirtualTextWarning
"   Used for "Warning" diagnostic virtual text.

" LspDiagnosticsVirtualTextInformation
"   Used for "Information" diagnostic virtual text.

" LspDiagnosticsVirtualTextHint
"   Used for "Hint" diagnostic virtual text.

" LspDiagnosticsUnderlineError
"   Used to underline "Error" diagnostics.

" LspDiagnosticsUnderlineWarning
"   Used to underline "Warning" diagnostics.

" LspDiagnosticsUnderlineInformation
"   Used to underline "Information" diagnostics.

" LspDiagnosticsUnderlineHint
"   Used to underline "Hint" diagnostics.

" LspDiagnosticsFloatingError
"   Used to color "Error" diagnostic messages in diagnostics float.

" LspDiagnosticsFloatingWarning
"   Used to color "Warning" diagnostic messages in diagnostics float.

" LspDiagnosticsFloatingInformation
"   Used to color "Information" diagnostic messages in diagnostics float.

" LspDiagnosticsFloatingHint
"   Used to color "Hint" diagnostic messages in diagnostics float.

" LspDiagnosticsSignError
"   Used for "Error" signs in sign column.

" LspDiagnosticsSignWarning
"   Used for "Warning" signs in sign column.

" LspDiagnosticsSignInformation
"   Used for "Information" signs in sign column.

" LspDiagnosticsSignHint
"   Used for "Hint" signs in sign column.

" CocErrorSign CocWarningSign CocInfoSign CocHintSign
