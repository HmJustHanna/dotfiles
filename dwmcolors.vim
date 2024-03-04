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
let g:colors_name="dwmcolors"

hi Boolean                                       guifg=#ff0000
hi cDefine                                       guifg=#005577
hi cInclude        cterm=bold                    guifg=#005577
hi Character                                     guifg=#bbbbbb
hi Comment         cterm=italic                  guifg=#444444
hi Constant                                      guifg=#005577
hi CursorColumn                   guibg=#bbbbbb
hi CursorLine                     guibg=#000000
hi Conditional     gui=bold       guibg=#000000  guifg=#005577
hi ColorColumn                    guibg=#222222
hi CursorLineNr                   guibg=#000000  guifg=#00668e
hi DiffAdd                        guibg=#000000  guifg=#005577
hi DiffChange                     guibg=#000000  guifg=#005577
hi DiffDelete                     guibg=#000000  guifg=#005577
hi DiffText                       guibg=#000000  guifg=#bbbbbb
hi Directory                      guibg=#000000  guifg=#005577
hi ErrorMsg                       guibg=#ff0000  guifg=#000000
hi FoldColumn                     guibg=#000000  guifg=#ff0000
hi Folded                         guibg=#000000  guifg=#ff0000
hi Function                       guibg=#000000  guifg=#005577
hi Identifier                     guibg=#000000  guifg=#005577
hi IncSearch       gui=none       guibg=#ff0000  guifg=#000000
hi LineNr                         guibg=#000000  guifg=#444444
hi MatchParen      gui=none       guibg=#005577  guifg=#000000
hi ModeMsg                        guibg=#000000  guifg=#005577
hi MoreMsg                        guibg=#000000  guifg=#005577
hi NonText                        guibg=#000000  guifg=#bbbbbb
hi Normal          gui=none       guibg=#000000  guifg=#bbbbbb
hi Number          gui=none       guibg=#000000  guifg=#005577
hi Operator        gui=none                      guifg=#005577
hi PreProc         gui=none                      guifg=#bbbbbb
hi Pmenu                          guibg=#222222  guifg=#bbbbbb
hi PmenuSel                       guibg=#005577  guifg=#eeeeee
hi PmenuSbar                                     guibg=#222222
hi PmenuThumb                                    guibg=#005577
hi Question                                      guifg=#005577
hi Search          gui=bold       guibg=#ff0000  guifg=#000000
hi SignColumn                     guibg=#000000  guifg=#bbbbbb
hi Special         gui=none       guibg=#000000  guifg=#bbbbbb
hi SpecialKey                     guibg=#000000  guifg=#005577
hi SpecialComment                 guibg=#000000  guifg=#bbbbbb
hi Statement       gui=bold                      guifg=#005577
hi StatusLine      gui=bold       guibg=#005577  guifg=#000000
hi StatusLineNC                   guibg=#000000  guifg=#005577
hi StatusLineTerm  gui=bold       guibg=#005577  guifg=#000000  
hi StatusLineTermNC               guibg=#000000  guifg=#005577
hi StorageClass    cterm=bold     guibg=#000000  guifg=#005577
hi String          gui=none       guibg=#000000  guifg=#bbbbbb
hi Structure       cterm=bold                    guifg=#005577
hi TabLine         gui=none       guibg=#000000  guifg=#005577
hi TabLineFill     gui=underline  guibg=#000000  guifg=#000000
hi TabLineSel      gui=none       guibg=#005577  guifg=#000000
hi Title           gui=none                      guifg=#005577
hi Todo            gui=none       guibg=#000000  guifg=#ff0000
hi Type            cterm=bold                    guifg=#005577
hi VertSplit       gui=none       guibg=#000000  guifg=#bbbbbb
hi Visual                         guibg=#005577  guifg=#000000
hi WarningMsg                     guibg=#ffff00  guifg=#000000
hi WildMenu                       guibg=#005577  guifg=#000000

