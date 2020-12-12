" Custom commands

" :OR to organize a files imports using CoC
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

function TrimWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    %s/\s\+$//e
    normal `zmz
  endif
endfunction

" :Trim to trim trailing whitespace
command! -nargs=0 Trim :call TrimWhitespace()

