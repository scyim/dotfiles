nnoremap n nzzzv
nnoremap <c-j> :bp<cr>
nnoremap <c-k> :bn<cr>
nnoremap <c-h> :tabprevious<cr>
nnoremap <c-l> :tabnext<cr>

" nnoremap <f1> :NERDTreeToggle <cr>
nnoremap <f1> :NnnPicker <cr>
nnoremap <f2> :Tagbar <cr>

nnoremap <silent> [q :cprevious <cr>
nnoremap <silent> ]q :cnext <cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <F7>  :AsyncRun -cwd=<root> make <cr>
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
nnoremap <F4>  :AsyncRun -mode=term -pos=bottom -rows=8 make -j4<cr>
nnoremap <F5>  :call CompileAndRun()<cr>
nnoremap <f7>  :AsyncRun -cwd=<root> make <cr>
nnoremap <f10> :call asyncrun#quickfix_toggle(6) <cr>
nnoremap <f4>  :AsyncRun -mode=term -pos=bottom -rows=8 make -j4 <cr>
nnoremap <f5>  :call CompileAndRun() <cr>

nnoremap <Leader>j :FZF<cr>
vnoremap <space> "+y

nmap <Leader>j :Files<cr>
" Echo translation in the cmdline
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV

" Zeal
nmap <leader>z <Plug>Zeavim
vmap <leader>z <Plug>ZVVisSelection
nmap gz <Plug>ZVOperator
nmap <leader><leader>z <Plug>ZVKeyDocset

" window
noremap <m-H> <c-w>h
noremap <m-L> <c-w>l
noremap <m-J> <c-w>j
noremap <m-K> <c-w>k
inoremap <m-H> <esc><c-w>h
inoremap <m-L> <esc><c-w>l
inoremap <m-J> <esc><c-w>j
inoremap <m-K> <esc><c-w>k

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
