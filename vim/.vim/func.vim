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

let g:asyncrun_status = "stopped"
function! AsynrunStatus()
    if g:asyncrun_status == "stopped"
        return 
    else
        return g:asyncrun_status
    endif
endfunction
