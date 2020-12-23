" Startify configuration
let g:startify_change_to_dir       = 1
let g:startify_change_to_vcs_root  = 1
let g:startify_files_number        = 10
let g:startify_session_autoload    = 1
let g:startify_session_persistence = 1
let g:startify_session_sort        = 1
let g:startify_custom_header       = 'startify#pad(startify#fortune#boxed())'

let g:startify_lists = [
      \ { 'type': 'sessions',   'header': ['   Projects'] },
      \ { 'type': 'files',      'header': ['   Recently opened'] },
      \ { 'type': 'bookmarks',  'header': ['   Bookmarks'] },
      \ { 'type': 'commands',   'header': ['   Commands'] },
      \ ]

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ ]

