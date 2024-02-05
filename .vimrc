


" BASIC



syntax enable
set background=dark

""colorscheme darkblue 
colorscheme grey-matrix

set termguicolors
""set relativenumber
""set number
set mouse=
set cursorline
set completeopt=menu

set expandtab
set tabstop=4
set shiftwidth=4
set smarttab

set showcmd
set autoindent
set smartindent
set wrap
set linebreak

set hlsearch
set incsearch
set nowrapscan

set noswapfile
set nobackup
set fileencodings=utf-8,cp1251,koi8-r,cp86
set visualbell

" KEYBINDINGS

" Automatically closing braces

inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap {_ {}<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap {+ {<CR>}<Esc>ko
