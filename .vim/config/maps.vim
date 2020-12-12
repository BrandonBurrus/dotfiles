" Keymaps

" Use the spacebar as the leader key
let mapleader=" "

inoremap <D-j> <Esc>:m .+1<CR>==gi<C-z>
inoremap <D-k> <Esc>:m .-2<CR>==gi<C-z>
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
map F <Plug>Sneak_F
map T <Plug>Sneak_T
map f <Plug>Sneak_f
map t <Plug>Sneak_t
nmap <leader>+ <Plug>AirlineSelectNextTab
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> <leader>d <Plug>DashSearch
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent><leader>cr :CocRestart<CR>
nnoremap <D-'> cs'`<CR>
nnoremap <D-R> <Plug>(coc-rename)
nnoremap <D-j> :m .+1<CR>==<C-z>
nnoremap <D-k> :m .-2<CR>==<C-z>
nnoremap <ESC><ESC> :nohls<CR><C-z>
nnoremap <leader>ca :CocAction<CR>
nnoremap <leader>rl :so ~/.gvimrc<CR>
nnoremap <silent> <D-H> :bp<CR>
nnoremap <silent> <D-L> :bn<CR>
nnoremap <silent> <Down> :resize +2<CR>
nnoremap <silent> <Left> :vertical resize -2<CR>
nnoremap <silent> <Right> :vertical resize +2<CR>
nnoremap <silent> <Up> :resize -2<CR>
nnoremap <silent> <leader>, :bp <CR>
nnoremap <silent> <leader>. :bn <CR>
nnoremap <silent> <leader><ESC> :Startify<CR>
nmap <silent> <leader><leader>d <Plug>DashGlobalSearch
nnoremap <silent> <leader>T :term<CR>
nnoremap <silent> <leader>W :bd<CR>
nnoremap <silent> <leader>\ :so ~/.vimrc<CR>
nnoremap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
nnoremap <silent> <leader>b :call fzf#vim#buffers()<CR>
nnoremap <silent> <leader>cc :CocConfig<CR>
nnoremap <silent> <leader>co :Commands<CR>
nnoremap <silent> <leader>cp :SClose<CR>
nnoremap <silent> <leader>cs :e ~/.vim/colors/neonchalk.vim<CR>
nnoremap <silent> <leader>cu :UltiSnipsEdit<CR>
nnoremap <silent> <leader>cv :e ~/.vimrc<CR>
nnoremap <silent> <leader>f :CocAction<CR>
nnoremap <silent> <leader>g1 :diffget //2<CR>
nnoremap <silent> <leader>g2 :diffget //3<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Commits<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gd :Gvdiff<CR>
nnoremap <silent> <leader>gh :NERDTreeCWD<CR>
nnoremap <silent> <leader>gs :G<CR>
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>l :Lines<CR>
nnoremap <silent> <leader>mk :Marks<CR>
nnoremap <silent> <leader>mp :Maps<CR>
nnoremap <silent> <leader>or :OR<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>
nnoremap <silent> <leader>rN :set relativenumber!<CR>
nnoremap <silent> <leader>rf :NERDTreeFind<CR>
nnoremap <silent> <leader>rn :set relativenumber<CR>
nnoremap <silent> <leader>sf :GFiles?<CR>
nnoremap <silent> <leader>sn :Snippets<CR>
nnoremap <silent> <leader>t :vert term<CR>
nnoremap <silent> <leader>u :UndotreeToggle<CR>
nnoremap <silent> <leader>w :BD<CR>
nnoremap <silent>_ :MaximizerToggle<CR>
noremap - -
noremap <D-1> 1<C-w><C-w>
noremap <D-2> 2<C-w><C-w>
noremap <D-3> 3<C-w><C-w>
noremap <D-4> 4<C-w><C-w>
noremap <D-5> 5<C-w><C-w>
noremap <D-E> :NERDTreeToggle<CR>
noremap <D-F> :Ag<CR>
noremap <SPACE> <Nop>
noremap <silent> <C-H> :tabN<CR>
noremap <silent> <C-L> :tabn<CR>
noremap <silent> <C-O> :BTags<CR>
noremap <silent> <C-p> :GFiles<CR>
noremap <silent> <D-/> :Commentary<CR>
noremap <silent> <D-P> :Files<CR>
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv
vnoremap <silent>_ :MaximizerToggle<CR>gv
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
try
    nmap <silent> ]e :call CocAction('diagnosticNext')<cr>
    nmap <silent> [e :call CocAction('diagnosticPrevious')<cr>
    nmap <silent> ]h <Plug>(GitGutterNextHunk)
    nmap <silent> [h <Plug>(GitGutterPrevHunk)
endtry

" Bind for <leader>/ to show syntax groups
map <leader>/ :echo "" . synIDattr(synID(line("."),col("."),1),"name") . ' : '
      \ . synIDattr(synID(line("."),col("."),0),"name") . " : "
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ""<CR>

" Bind <leader>h to trigger hover docs
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use Tab for auto-completion
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Bind for cycling through auto-complete menu
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

