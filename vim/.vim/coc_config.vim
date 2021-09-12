let g:coc_global_extensions = [
            \'coc-clangd',
            \'coc-pairs',
            \'coc-word',
            \'coc-lists',
            \'coc-pyright',
            \'coc-snippets',
            \'coc-json',
            \'coc-yank',
            \'coc-git',
            \'coc-rls',
            \'coc-css',
            \'coc-markdownlint',
            \'coc-marketplace',
            \'coc-texlab',
            \]

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
" if has('nvim')
    " inoremap <silent><expr> <c-space> coc#refresh()
" else
    " inoremap <silent><expr> <c-@> coc#refresh()
" endif

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

 " Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>F  <Plug>(coc-format-selected)
nmap <leader>F  <Plug>(coc-format-selected)

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
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
nnoremap <silent><nowait> <space>m  :<C-u>CocList marks<CR>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<CR>
nnoremap <silent><nowait> <space>b  :<C-u>CocList buffers<CR>
nnoremap <silent><nowait> <space>g  :<C-u>CocList grep<CR>
nnoremap <silent><nowait> <space>w  :exe 'CocList -I --input='.expand('<cword>').' words'<CR>
nnoremap <silent><nowait> <leader>fb :exe 'CocList buffers'<CR>
nnoremap <silent><nowait> <leader>fw :exe 'CocList words'<CR>
nnoremap <silent><nowait> <leader>fg :exe 'CocList grep'<CR>


" coc-smartf
" press <esc> to cancel.
" nmap f <Plug>(coc-smartf-forward)
" nmap F <Plug>(coc-smartf-backward)
" nmap ; <Plug>(coc-smartf-repeat)
" nmap , <Plug>(coc-smartf-repeat-opposite)

" augroup Smartf
  " autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
  " autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
" augroup end

" coc-yank
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" coc-hightlight
" autocmd CursorHold * silent call CocActionAsync('highlight')
