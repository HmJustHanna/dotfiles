"
" ~/.vimrc by https://github.com/HmJustHanna
"
" sources:
" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
"

set history=500
set autoread
"au FocusGained,BufEnter * silent! checktime
set autoindent
set mouse=
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
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

"colorscheme monotone
"colorscheme 256_noir
colorscheme quiet
syntax enable
set background=dark
set termguicolors
" hi Normal guibg=NONE ctermbg=NONE

set mouse=
set wildmenu
set ruler
set cmdheight=1
set lbr
set tw=100

set laststatus=2


" KEYBINDINGS & FUNCTIONS


command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

inoremap {+ {<CR>}<Esc>ko
" inoremap ( ()<Esc>ha
" inoremap [ []<Esc>ha

let mapleader = "\<Space>"
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>t<leader> :tabnext<cr>

" opens a new tab with the current buffer's path
" map <leader>te :tabedit <C-r>=escape(expand("%:p:h"), " ")<cr>/

" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

if has("autocmd")
    augroup templates
        autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
    augroup END
endif

autocmd BufWritePre,FileWritePre *.sh   ks|call LastMod()|'s
fun LastMod()
    if line("$") > 20
        let l = 20
    else
        let l = line("$")
    endif
    exe "1," .. l .. "g/last modified: /s/last modified: .*/last modified: " ..
                \ strftime("%d %b %Y")
endfun
