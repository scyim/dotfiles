if &compatible
    set nocompatible
endif

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-dict'
" Plug 'skywind3000/vim-auto-popmenu'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'

if $DESKTOP_SESSION != 'sway'
    " Plug 'lilydjwg/fcitx.vim', {'branch': 'fcitx5'}
    Plug 'kevinhwang91/vim-ibus-sw'
endif

if has('nvim-0.0.5')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
    " Plug 'neovim/nvim-lspconfig'
endif

Plug 'jsfaint/gen_tags.vim'

Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'voldikss/vim-translator'
Plug 'KabbAmine/zeavim.vim'
Plug 'ap/vim-css-color'
Plug 'preservim/tagbar'
Plug 'dstein64/vim-startuptime'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'

Plug 'morhetz/gruvbox'
Plug 'sainnhe/edge'
Plug 'sainnhe/sonokai'
Plug 'tomasr/molokai'
Plug 'glepnir/zephyr-nvim'
Plug 'bkegley/gloombuddy'

call plug#end()

" set number relativenumber
filetype on
syntax on
set nu
set nohlsearch
" tab & sapce
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set cindent
set cinoptions=g-1
set cinoptions=(0

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
set laststatus=2
set showtabline=1
set showmode
set ruler
" set timeout=500
set shortmess+=c
set cpt=.,k,w,b
set completeopt=menu,menuone

" Colorscheme
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
"let g:gruvbox_improved_strings=1
let g:gruvbox_improved_warnings=1
let g:seoul256_background=256
let g:one_allow_italics=1
let g:molokai_original=1
let g:rehash256=1
set background=dark
colorscheme sonokai
" hightlight matches
highlight MatchParen term=underline gui=underline cterm=underline 
" highlight Normal ctermbg=NONE
" alacritty没有阴影
" if ($TERM == 'alacritty')
    " highlight Normal ctermbg=NONE
" endif

" cursor shape
" echo -e -n "\x1b[\x30 q" # changes to blinking block
" echo -e -n "\x1b[\x31 q" # changes to blinking block also
" echo -e -n "\x1b[\x32 q" # changes to steady block
" echo -e -n "\x1b[\x33 q" # changes to blinking underline
" echo -e -n "\x1b[\x34 q" # changes to steady underline
" echo -e -n "\x1b[\x35 q" # changes to blinking bar
" echo -e -n "\x1b[\x36 q" # changes to steady bar
" if &term =~ "xterm" || &term =~ "alacritty" || &term =~ "tmux"
    " let &t_SI = "\x1b[\x35 q"
    " let &t_SR = "\x1b[\x31 q"
    " let &t_EI = "\x1b[\x31 q" 
" endif

autocmd BufReadPost *.gsm set filetype=asm
autocmd BufReadPost *.s   set filetype=asm
autocmd BufReadPost *.asm set filetype=asm

" vim-auto-popmenu
let g:apc_enable_ft = {'text':1, 'c++':1, 'python':1}

" indentLine
let g:indentLine_setColors = 1
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239
" let g:indentLine_bgcolor_term = 202
let g:indentLine_fileType = ['shell', 'python']

" let g:indent_blankline_char = '┆'
" let g:indent_blankline_use_treesitter = v:true
" let g:indent_blankline_filetype = ['python']
" let g:indent_blankline_space_char_blankline = ' '
" let g:indent_blankline_filetype_exclude = ['help']
" let g:indent_blankline_buftype_exclude = ['terminal']
" let g:indent_blankline_bufname_exclude = ['README.md']

" fzf-vim
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_buffers_jump = 1
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

" vim-translator
let g:translator_default_engines=['bing', 'youdao']

" netrw
let g:loaded_netrw=1
let loaded_netrwPlugin=1

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 0

" ripgrep
if executable("rg") 
    set grepprg=rg\ --vimgrep
endif

" tpope/vim-markdown
let g:markdown_fenced_languages = ['cpp', 'python', 'bash=sh']
let g:markdown_minlines = 100
"let g:markdown_syntax_conceal = 0

" skywind3000/asyncrun.vim
let g:asyncrun_open=8
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml', 'build']

"Gtags
set cscopeprg='gtags-cscope' " 使用 gtags-cscope 代替 cscope
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Quiet = 1
" source /usr/share/gtags/gtags.vim
" source /usr/share/gtags/gtags-cscope.vim

function s:gtags_search(line)
     let l:line = split(a:line)[1]
     let l:file = split(a:line)[2]
     execute 'edit +'.l:line l:file
endfunction

nnoremap <silent> <Leader>T :call fzf#run(fzf#wrap({'source':'global -x .', 'sink':function('<sid>gtags_search'),
             \ 'options': ['-m', '-d', '\t', '--with-nth', '1,2', '-n', '1', '--prompt', 'Tags> ']}))<CR>

source ~/.vim/coc_config.vim
source ~/.vim/func.vim
source ~/.vim/mapping.vim
source ~/.vim/statusline.vim
if has('nvim-0.0.5')
    source ~/.vim/nvim.vim
endif
