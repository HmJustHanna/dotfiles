"
" ~/.vimrc by https://github.com/HmJustHanna
" thank you https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
"

set history=500
set autoread
au FocusGained,BufEnter * silent! checktime
set mouse=a
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set wrap
set linebreak
set ignorecase
set smartcase
set hlsearch
set incsearch
set noswapfile
set nobackup
set fileencodings=utf-8,cp1251,koi8-r,cp86

filetype plugin on
filetype indent on


" INTERFACE


syntax enable
set background=dark
set termguicolors
colorscheme dwmcolors
" hi Normal guibg=NONE ctermbg=NONE

set mouse=
set wildmenu
set ruler
set cmdheight=1
set lbr
set tw=100

set laststatus=2


" KEYBINDINGS


let mapleader = "\<Space>"

" :W sudo saves the file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" inoremap ( ()<Esc>ha
" inoremap [ []<Esc>ha
inoremap {+ {<CR>}<Esc>ko

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>

" opens a new tab with the current buffer's path
map <leader>te :tabedit <C-r>=escape(expand("%:p:h"), " ")<cr>/

" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
