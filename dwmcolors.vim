"
" File: dwm.vim
" Description: vim colorscheme with inspiration from dwm default colors
" Contact: evdokimovaaa.job@gmail.com
" Last Change: Sun, March 3, 2024.
" Installation: Drop this file in your $VIMRUNTIME/colors/ directory.
"

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="dwm"

"--------------------------------------------------------------------

hi Boolean                                       guifg=#005577
hi cDefine                                       guifg=#005577
hi cInclude                                      guifg=#9e9e9e
hi Comment                                       guifg=#444444
hi Constant                                      guifg=#005577
hi Cursor                         guibg=#444444  guifg=#9e9e9e
hi CursorColumn                   guibg=#000011
hi CursorLine                     guibg=#000018
hi DiffAdd                        guibg=#333333  guifg=#005577
hi DiffChange                     guibg=#333333  guifg=#005577
hi DiffDelete                     guibg=#333333  guifg=#005577
hi DiffText                       guibg=#333333  guifg=#9e9e9e
hi Directory                      guibg=#000000  guifg=#005577
hi ErrorMsg                       guibg=#ee00ee  guifg=#000000
hi FoldColumn                     guibg=#000000  guifg=#ff0000
hi Folded                         guibg=#000000  guifg=#ff0000
hi Function                       guibg=#000000  guifg=#005577
hi Identifier                     guibg=#000000  guifg=#0000cc
hi IncSearch       gui=none       guibg=#005577  guifg=#000000
hi LineNr                         guibg=#000000  guifg=#000088
hi MatchParen      gui=none       guibg=#000000  guifg=#005577
hi ModeMsg                        guibg=#000000  guifg=#005577
hi MoreMsg                        guibg=#000000  guifg=#005577
hi NonText                        guibg=#000000  guifg=#9e9e9e
hi Normal          gui=none       guibg=#000000  guifg=#c0c0c0
hi Operator        gui=none                      guifg=#444444
hi PreProc         gui=none                      guifg=#9e9e9e
hi Question                                      guifg=#005577
hi Search          gui=none       guibg=#005577  guifg=#000000
hi SignColumn                     guibg=#111111  guifg=#9e9e9e
hi Special         gui=none       guibg=#000000  guifg=#9e9e9e
hi SpecialKey                     guibg=#000000  guifg=#005577
hi Statement       gui=bold                      guifg=#005577
hi StatusLine      gui=none       guibg=#005577  guifg=#000000
hi StatusLineNC    gui=none       guibg=#444444  guifg=#000000
hi String          gui=none                      guifg=#005577
hi TabLine         gui=none       guibg=#444444  guifg=#000000
hi TabLineFill     gui=underline  guibg=#000000  guifg=#9e9e9e
hi TabLineSel      gui=none       guibg=#0076a5  guifg=#000000
hi Title           gui=none                      guifg=#005577
hi Todo            gui=none       guibg=#000000  guifg=#ff0000
hi Type            gui=none                      guifg=#9e9e9e
hi VertSplit       gui=none       guibg=#000000  guifg=#9e9e9e
hi Visual                         guibg=#005577  guifg=#000000
hi WarningMsg                     guibg=#888888  guifg=#000000

"- end of colorscheme -----------------------------------------------  
