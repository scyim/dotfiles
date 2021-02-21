func! CompileAndRun()
    exec "w"
    if &filetype == 'c'
        exec "AsyncRun gcc % -o %<; ./%<; rm %<" 
    elseif &filetype == "cpp"
        exec "AsyncRun g++ -std=c++17 -pthread % -o %<; ./%<; rm %<" 
    elseif &filetype == 'sh'
        exec "AsyncRun time bash %" 
    elseif &filetype == 'python'
        exec "AsyncRun python %"
    endif
endfunc

" coc relative functions

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocActionAsync('doHover')
    endif
endfunction

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:asyncrun_status = "stopped"
function! AsynrunStatus()
    if g:asyncrun_status == "stopped"
        return 
    else
        return g:asyncrun_status
    endif
endfunction

" let g:lightline = {
      " \ 'colorscheme': 'wombat',
      " \ 'active': {
      " \   'left': [ [ 'mode', 'paste' ],
      " \             [ 'cocstatus', 'currentfunction', 'asyncrun', 'readonly', 'filename', 'modified' ] ]
      " \ },
      " \ 'component_function': {
      " \   'cocstatus': 'coc#status',
      " \   'currentfunction': 'CocCurrentFunction',
      " \   'asyncrun': 'AsynrunStatus',
      " \ },
      " \ }
