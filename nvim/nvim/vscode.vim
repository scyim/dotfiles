set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set nocompatible    
filetype on    
syntax on

call plug#begin('~/.vim/plugged')

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'skywind3000/asyncrun.vim'
" Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
" Plug 'preservim/nerdtree'
" Plug 'mcchrish/nnn.vim'
" Plug 'kevinhwang91/vim-ibus-sw'
Plug 'honza/vim-snippets'
Plug 'skywind3000/vim-dict'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf.vim'

call plug#end()

set nu
set nohlsearch
" tab & sapce
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set cindent
set formatoptions=vt
set magic 
set nobackup
set hidden
set history=1000
set ignorecase
set noswapfile
"set colorcolumn=81
set signcolumn=no
set cursorline
set mouse=nv
set guifont=Monospace\ Regular\ 12
set guioptions=g
set nolazyredraw
" set laststatus=2
set showmode
set ruler

autocmd BufReadPost *.gsm set filetype=asm
autocmd BufReadPost *.s   set filetype=asm
autocmd BufReadPost *.asm set filetype=asm

" rg
if executable("rg") 
    set grepprg=rg\ --vimgrep
endif
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
" Gtags
"
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Quiet = 1
set cscopetag
set cscopeprg='gtags-cscope'

" junegunn/vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" mappings
nmap <Leader>j :FZF<cr>
vnoremap <space> "+y

noremap <m-H> <c-w>h
noremap <m-L> <c-w>l
noremap <m-J> <c-w>j
noremap <m-K> <c-w>k
inoremap <m-H> <esc><c-w>h
inoremap <m-L> <esc><c-w>l
inoremap <m-J> <esc><c-w>j
inoremap <m-K> <esc><c-w>k

set termwinkey=<c-_>
tnoremap <m-H> <c-_>h
tnoremap <m-L> <c-_>l
tnoremap <m-J> <c-_>j
tnoremap <m-K> <c-_>k
tnoremap <m-P> <c-_>p
tnoremap <Esc> <C-\><C-n>
tnoremap <m-q> <c-\><c-n>
tnoremap <m--> <c-_>"0

