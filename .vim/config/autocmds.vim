" Auto commands

augroup AutoFileTypes
  autocmd!
  autocmd BufRead,BufNewFile .aliases setfiletype bash
  autocmd BufRead,BufNewFile .babelrc setfiletype json
  autocmd BufRead,BufNewFile .eslintrc setfiletype json
  autocmd BufRead,BufNewFile .prettierrc setfiletype json
augroup END

augroup AutoFileLocals
  autocmd!
  autocmd BufRead,BufNewFile *.ts setlocal filetype=typescript
  autocmd BufRead,BufNewFile *.md setlocal textwidth=100
  autocmd BufRead,BufNewFile *.mdx set syntax=markdown
  autocmd BufRead,BufNewFile *.zsh-theme set syntax=bash
augroup END

augroup AutoMisc
  autocmd!
  autocmd CompleteDone * if !pumvisible() | pclose | endif
  autocmd StdinReadPre * let s:std_in=1
augroup END
