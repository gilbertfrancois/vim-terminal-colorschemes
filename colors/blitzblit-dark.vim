" Name:         blitzblit-l
" Description:  A modern VIM and NeoVIM colorscheme, inspired by onel,
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

let colors_name = "blitzblit-l"

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
call SetColor('Number',         s:l_yellow, s:none,     s:none) 
call SetColor('Boolean',        s:l_yellow, s:none,     s:none)
call SetColor('Float',          s:l_yellow, s:none,     s:none)

call SetColor('Identifier',     s:silver,   s:none,     s:none)
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
call SetColor('Error',          s:white,    s:l_red,      s:none)
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


call SetColor('DiagnosticError',            s:d_red,    s:none,     s:none)
call SetColor('DiagnosticWarn',             s:d_yellow, s:none,     s:none)
call SetColor('DiagnosticInfo',             s:d_blue,   s:none,     s:none)
call SetColor('DiagnosticHint',             s:d_cyan,   s:none,     s:none)
call SetColor('DiagnosticUnderlineError',   s:l_red,    s:none,     s:underline)
call SetColor('DiagnosticUnderlineWarn',    s:l_yellow, s:none,     s:underline)
call SetColor('DiagnosticUnderlineInfo',    s:l_blue,   s:none,     s:underline)
call SetColor('DiagnosticUnderlineHint',    s:l_cyan,   s:none,     s:underline)


" CSS
hi link cssBraces                           Normal
hi link cssProp                             Normal
hi link cssInclude                          Normal
call SetColor("cssAttrComma",               s:l_purple, s:none,     s:none)
call SetColor("cssAttributeSelector",       s:l_green,  s:none,     s:none)
call SetColor("cssClassName",               s:l_yellow, s:none,     s:none)
call SetColor("cssClassNameDot",            s:l_yellow, s:none,     s:none)
call SetColor("cssDefinition",              s:l_purple, s:none,     s:none)
call SetColor("cssFontAttr",                s:l_yellow, s:none,     s:none)
call SetColor("cssFontDescriptor",          s:l_purple, s:none,     s:none)
call SetColor("cssFunctionName",            s:l_blue,   s:none,     s:none)
call SetColor("cssIdentifier",              s:l_blue,   s:none,     s:none)
call SetColor("cssImportant",               s:l_purple, s:none,     s:none)
call SetColor("cssIncludeKeyword",          s:l_purple, s:none,     s:none)
call SetColor("cssMediaType",               s:l_yellow, s:none,     s:none)
call SetColor("cssPseudoClassId",           s:l_yellow, s:none,     s:none)
call SetColor("cssSelectorOp",              s:l_purple, s:none,     s:none)
call SetColor("cssSelectorOp2",             s:l_purple, s:none,     s:none)
call SetColor("cssTagName",                 s:l_red,    s:none,     s:none)

" HTML (keep consistent with Markdown, below)
call SetColor("htmlArg", 					s:l_yellow, s:none,     s:none)
call SetColor("htmlBold", 					s:l_yellow, s:none,     s:none)
call SetColor("htmlBoldItalic", 			s:l_green,  s:none,     s:none)
hi link htmlEndTag                          Normal
hi link htmlEndTag                          Normal
call SetColor("htmlH1", 					s:l_red,    s:none,     s:none)
call SetColor("htmlH2", 					s:l_red,    s:none,     s:none)
call SetColor("htmlH3", 					s:l_red,    s:none,     s:none)
call SetColor("htmlH4", 					s:l_red,    s:none,     s:none)
call SetColor("htmlH5", 					s:l_red,    s:none,     s:none)
call SetColor("htmlH6", 					s:l_red,    s:none,     s:none)
call SetColor("htmlItalic", 			    s:l_purple, s:none,     s:none)
call SetColor("htmlLink", 					s:l_cyan,   s:none,     s:none)
call SetColor("htmlSpecialChar", 			s:l_yellow, s:none,     s:none)
call SetColor("htmlSpecialTagName", 		s:l_red,    s:none,     s:none)
hi link htmlTag                             Normal
call SetColor("htmlTagN", 					s:l_red,    s:none,     s:none)
call SetColor("htmlTagName", 			    s:l_red,    s:none,     s:none)
hi link htmlTitle                           Normal


" JavaScript
hi link javaScriptBraces Normal
call SetColor("javaScriptFunction", s:l_purple, s:none, s:none)
call SetColor("javaScriptIdentifier", s:l_purple, s:none, s:none)
call SetColor("javaScriptNull", s:l_yellow, s:none, s:none)
call SetColor("javaScriptNumber", s:l_yellow, s:none, s:none)
call SetColor("javaScriptRequire", s:l_cyan, s:none, s:none)
call SetColor("javaScriptReserved", s:l_purple, s:none, s:none)
" https://github.com/pangloss/vim-javascript
call SetColor("jsArrowFunction", s:l_purple, s:none, s:none)
call SetColor("jsClassKeyword", s:l_purple, s:none, s:none)
call SetColor("jsClassMethodType", s:l_purple, s:none, s:none)
call SetColor("jsDocParam", s:l_blue, s:none, s:none)
call SetColor("jsDocTags", s:l_purple, s:none, s:none)
call SetColor("jsExport", s:l_purple, s:none, s:none)
call SetColor("jsExportDefault", s:l_purple, s:none, s:none)
call SetColor("jsExtendsKeyword", s:l_purple, s:none, s:none)
call SetColor("jsFrom", s:l_purple, s:none, s:none)
call SetColor("jsFuncCall", s:l_blue, s:none, s:none)
call SetColor("jsFunction", s:l_purple, s:none, s:none)
call SetColor("jsGenerator", s:l_yellow, s:none, s:none)
call SetColor("jsGlobalObjects", s:l_yellow, s:none, s:none)
call SetColor("jsImport", s:l_purple, s:none, s:none)
call SetColor("jsModuleAs", s:l_purple, s:none, s:none)
call SetColor("jsModuleWords", s:l_purple, s:none, s:none)
call SetColor("jsModules", s:l_purple, s:none, s:none)
call SetColor("jsNull", s:l_yellow, s:none, s:none)
call SetColor("jsOperator", s:l_purple, s:none, s:none)
call SetColor("jsStorageClass", s:l_purple, s:none, s:none)
call SetColor("jsSuper", s:l_red, s:none, s:none)
call SetColor("jsTemplateBraces", s:l_red, s:none, s:none)
call SetColor("jsTemplateVar", s:l_green, s:none, s:none)
call SetColor("jsThis", s:l_red, s:none, s:none)
call SetColor("jsUndefined", s:l_yellow, s:none, s:none)
" https://github.com/othree/yajs.vim
call SetColor("javascriptArrowFunc", s:l_purple, s:none, s:none)
call SetColor("javascriptClassExtends", s:l_purple, s:none, s:none)
call SetColor("javascriptClassKeyword", s:l_purple, s:none, s:none)
call SetColor("javascriptDocNotation", s:l_purple, s:none, s:none)
call SetColor("javascriptDocParamName", s:l_blue, s:none, s:none)
call SetColor("javascriptDocTags", s:l_purple, s:none, s:none)
hi link javascriptEndColons Normal
call SetColor("javascriptExport", s:l_purple, s:none, s:none)
hi link javascriptFuncArg Normal
call SetColor("javascriptFuncKeyword", s:l_purple, s:none, s:none)
call SetColor("javascriptIdentifier", s:silver, s:none, s:none)
call SetColor("javascriptImport", s:l_purple, s:none, s:none)
hi link javascriptMethodName Normal
hi link javascriptObjectLabel Normal
call SetColor("javascriptOpSymbol", s:l_cyan, s:none, s:none)
call SetColor("javascriptOpSymbols", s:l_cyan, s:none, s:none)
call SetColor("javascriptPropertyName", s:l_green, s:none, s:none)
call SetColor("javascriptTemplateSB", s:l_red, s:none, s:none)
call SetColor("javascriptVariable", s:l_purple, s:none, s:none)



" TypeScript
call SetColor("typescriptReserved",         s:l_purple, s:none,     s:none)
hi link typescriptEndColons                 Normal
hi link typescriptBraces                    Normal

" XML
call SetColor("xmlAttrib",                  s:l_yellow, s:none,     s:none)
call SetColor("xmlEndTag",                  s:l_red,    s:none,     s:none)
call SetColor("xmlTag",                     s:l_red,    s:none,     s:none)
call SetColor("xmlTagName",                 s:l_red,    s:none,     s:none)





" Must appear at the end of the file to work around this oddity:
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
