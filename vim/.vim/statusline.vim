let g:asyncrun_status = "stopped"
function! AsynrunStatus()
    if g:asyncrun_status == "stopped"
        return 
    else
        return g:asyncrun_status
    endif
endfunction

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly','modified', 'git'] ],
      \   'right': [ [ 'percent' ], [ 'lineinfo' ], ['blame'] ],
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'asyncrun': 'AsynrunStatus',
      \   'blame': 'LightlineGitBlame',
      \ },
      \ }

func! LightlineGitBlame() abort 
    let blame = get(b:, 'coc_git_blame', '')
    return winwidth(0) > 120 ? blame : ''
endfunc

