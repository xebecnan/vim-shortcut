
" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

fun! s:VimscGetLine()
    let line = getline('.')
    if line =~ '^:.*$'
        norm 0ly$
        exec @"
    elseif line =~ '^!.*$'
        norm 0ly$
        exec "!cd %:p:h && " . @"
    endif
endfun

nnoremap <buffer> <silent> <cr> :call <SID>VimscGetLine()<cr>

