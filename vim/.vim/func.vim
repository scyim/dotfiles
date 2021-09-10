func! CompileAndRun()
    exec "w"
    if &filetype == 'c'
        exec "AsyncRun -mode=term gcc % -o %<; ./%<; rm %<" 
    elseif &filetype == "cpp"
        exec "AsyncRun  -mode=term g++ -std=c++17 -pthread % -o %<; ./%<; rm %<" 
    elseif &filetype == 'sh'
        exec "AsyncRun -mode=term time bash %" 
    elseif &filetype == 'python'
        exec "AsyncRun -mode=term python %"
    elseif &filetype == 'lua'
        exec "AsyncRun -mode=term lua %"
    elseif &filetype == 'tex'
        exec "AsyncRun -mode=term latexmk"
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
