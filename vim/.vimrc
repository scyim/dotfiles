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
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'

if $DESKTOP_SESSION != 'sway'
    Plug 'lilydjwg/fcitx.vim', {'branch': 'fcitx5'}
    " Plug 'kevinhwang91/vim-ibus-sw'
endif

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
Plug 'tomasr/molokai'

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
" let g:molokai_original=1
let g:rehash256=1
set background=dark
colorscheme gruvbox
" hightlight matches
highlight MatchParen term=underline gui=underline cterm=underline 
highlight Normal ctermbg=NONE
" alacritty没有阴影，设置成95透明度好看一点.
if ($TERM == 'alacritty')
    highlight Normal ctermbg=NONE
endif

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
" let g:apc_enable_ft = {'text':1, 'c++':1, 'python':1}

" indentLine
let g:indentLine_setColors = 1
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239
" let g:indentLine_bgcolor_term = 202
let g:indentLine_fileType = ['shell', 'python', 'css', 'html']

" LeaderF
" let g:Lf_WindowPosition = 'popup'
" let g:Lf_ShowDevIcons = 0
" let g:Lf_ShortcutF = "<leader>ff"

" fzf-vim
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_buffers_jump = 1
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>
nmap <Leader>j :Files<cr>

" vim-translator
let g:translator_default_engines=['bing', 'youdao']

" netrw
let g:loaded_netrw=1
let loaded_netrwPlugin=1
" preservim/nerdtree
nnoremap <f1> :NERDTreeToggle<CR>

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 0

" ripgrep
if executable("rg") 
    set grepprg=rg\ --vimgrep
endif
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>

" tpope/vim-markdown
let g:markdown_fenced_languages = ['cpp', 'python', 'bash=sh']
let g:markdown_minlines = 100
"let g:markdown_syntax_conceal = 0

"Gtags
set cscopeprg='gtags-cscope' " 使用 gtags-cscope 代替 cscope
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Quiet = 1
source /usr/share/gtags/gtags.vim
source /usr/share/gtags/gtags-cscope.vim
" ludovicchabant/vim-gutentags && skywind3000/gutentags_plus
" let g:gutentags_cache_dir=expand('~/.cache/tags')
" let g:gutentags_modules=['gtags_cscope', 'ctags']
" let g:gutentags_project_root=['.root', '.git', 'compile_commands.json']
" let g:gutentags_auto_add_gtags_cscope=1
" let g:gutentags_plus_nomap=1
" let g:gutentags_trace = 1


nnoremap <f2> :Tagbar<CR>

" vim-airline
" let g:airline_powerline_fonts=0
" let g:airline_symbols_ascii=1
" let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
" let g:airline#extensions#fugitiveline#enabled = 0
" let g:airline#extensions#fugitiveline#enabled = 0
" let g:airline#extensions#whitespace#enabled = 0

" let g:airline_section_c='%t'
" let g:airline_section_b=''

" if !exists('g:airline_symbols')
    " let g:airline_symbols = {}
" endif
" let g:airline_left_sep = ''
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_sep = ''
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.paste = ''
" let g:airline_symbols.paste = ''
" let g:airline_symbols.paste = ''
" let g:airline_symbols.spell = ''
" let g:airline_symbols.notexists = ''
" let g:airline_symbols.whitespace = ''

" junegunn/vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" skywind3000/asyncrun.vim
let g:asyncrun_open=8
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml', 'build']
nnoremap <silent> <F7> :AsyncRun -cwd=<root> make <cr>
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
noremap <F4> :AsyncRun -mode=term -pos=bottom -rows=8 make -j4<cr>
noremap <F5> :call CompileAndRun()<cr>
func! CompileAndRun()
    exec "w"
    if &filetype == 'c'
        exec "AsyncRun -mode=term -rows=8 gcc % -o %<; ./%<; rm %<" 
    elseif &filetype == "cpp"
        exec "AsyncRun -mode=term -rows=8 g++ -std=c++17 -pthread -lfmt % -o %<; ./%<; rm %<" 
    elseif &filetype == 'sh'
        exec "AsyncRun -mode=term -rows=8 time sh %"
    elseif &filetype == 'python'
        exec "AsyncRun -mode=term -rows=8 python %"
    endif
endfunc

" mappings
vnoremap <space> "+y

nmap <Leader>t <Plug>TranslateW
vmap <Leader>t <Plug>TranslateWV

tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Zeal
nmap <leader>z <Plug>Zeavim
vmap <leader>z <Plug>ZVVisSelection
nmap gz <Plug>ZVOperator
nmap <leader><leader>z <Plug>ZVKeyDocset

noremap <m-H> <c-w>h
noremap <m-L> <c-w>l
noremap <m-J> <c-w>j
noremap <m-K> <c-w>k
inoremap <m-H> <esc><c-w>h
inoremap <m-L> <esc><c-w>l
inoremap <m-J> <esc><c-w>j
inoremap <m-K> <esc><c-w>k

if has('terminal') && exists(':terminal') == 2 && has('patch-8.1.1')
    set termwinkey=<c-_>
    tnoremap <m-H> <c-_>h
    tnoremap <m-L> <c-_>l
    tnoremap <m-J> <c-_>j
    tnoremap <m-K> <c-_>k
    tnoremap <m-P> <c-_>p
    tnoremap <Esc> <C-\><C-n>
    tnoremap <m-q> <c-\><c-n>
    tnoremap <m--> <c-_>"0
elseif has('nvim')
    tnoremap <m-H> <c-\><c-n><c-w>h
    tnoremap <m-L> <c-\><c-n><c-w>l
    tnoremap <m-J> <c-\><c-n><c-w>j
    tnoremap <m-K> <c-\><c-n><c-w>k
    tnoremap <m-P> <c-\><c-n><c-w>p
    tnoremap <Esc> <C-\><C-n>
    tnoremap <m-q> <c-\><c-n>
    tnoremap <m--> <c-\><c-n>"0pa
endif

"----------- coc begin ---------
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:asyncrun_status = "stopped"
function! AsynrunStatus()
    if g:asyncrun_status == "stopped"
        return ''
    else
        return g:asyncrun_status
    endif
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly','modified' ] ],
      \   'right': [ [ 'percent' ], [ 'lineinfo' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'asyncrun': 'AsynrunStatus',
      \ },
      \ }

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocActionAsync('doHover')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

 " Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"-----------coc ended----------
