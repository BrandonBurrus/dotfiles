" Coc Extensions
let g:coc_global_extensions = [
      \ "coc-angular",
      \ "coc-bookmark",
      \ "coc-calc",
      \ "coc-css",
      \ "coc-cssmodules",
      \ "coc-docker",
      \ "coc-docthis",
      \ "coc-emmet",
      \ "coc-go",
      \ "coc-html",
      \ "coc-java",
      \ "coc-jedi",
      \ "coc-jest",
      \ "coc-json",
      \ "coc-kite",
      \ "coc-lua",
      \ "coc-omnisharp",
      \ "coc-protobuf",
      \ "coc-react-refactor",
      \ "coc-sh",
      \ "coc-spell-checker",
      \ "coc-sql",
      \ "coc-tailwindcss",
      \ "coc-tsserver",
      \ "coc-vetur",
      \ "coc-vimlsp"
      \ "coc-xml"
      \ "coc-yaml",
      \ "coc-yank"
      \ ]

" Load Prettier
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Load ESLint
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

