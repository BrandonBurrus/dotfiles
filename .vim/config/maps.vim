" Keymaps

" Use the spacebar as the leader key
let mapleader=" "
noremap <SPACE> <Nop>

" Insert-mode CoC auto-complete menu tab remaps
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Sneak plugin remaps
map F <Plug>Sneak_F
map T <Plug>Sneak_T
map f <Plug>Sneak_f
map t <Plug>Sneak_t

" CamelCase plugin remaps
map <silent> w <Plug>CamelCaseMotion_w
sunmap w
map <silent> b <Plug>CamelCaseMotion_b
sunmap b
map <silent> e <Plug>CamelCaseMotion_e
sunmap e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap ge

" Remap easymotion prefix to backslash
map \ <Plug>(easymotion-prefix)

" Airline tab selection remaps using <leader>
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" qf to apply a quick-fix on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" leader+f to open fix menu
nnoremap <leader>f :CocAction<CR>

" gd to go to definition
nmap gd <Plug>(coc-definition)

" gi to go to implementation
nmap gi <Plug>(coc-implementation)

" gr to get a list of references
nmap gr <Plug>(coc-references)

" gy to get the type definition
nmap gy <Plug>(coc-type-definition)

" Cmd+Shift+R to rename symbol
nmap <D-R> <Plug>(coc-rename)
nnoremap <ESC><ESC> :nohls<CR><C-z>

" Arrow keys to resize splits
nnoremap <Down> :resize +2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>
nnoremap <Up> :resize -2<CR>

" Leader and < or > to move between buffers
nnoremap <leader>, :bp <CR>
nnoremap <leader>. :bn <CR>

" Cmd+Shift+H and Cmd+Shift+L to move between buffers
nnoremap <D-H> :bp<CR>
nnoremap <D-L> :bn<CR>

" Leader ESC to close the current project session
nnoremap <leader><ESC> :Startify<CR>

" Dash remaps
nmap <leader>dg <Plug>DashGlobalSearch
nmap <leader>ds <Plug>DashSearch

" Run code action
nnoremap <leader>ca :CocAction<CR>

" Open CoC config
nnoremap <leader>cc :CocConfig<CR>

" List of commands
nnoremap <leader>co :Commands<CR>

" Close project
nnoremap <leader>cp :SClose<CR>

" Restart CoC
nnoremap <leader>cr :CocRestart<CR>

" Open color scheme
nnoremap <leader>cs :e ~/.vim/colors/neonchalk.vim<CR>

" Open snippets
nnoremap <leader>cu :UltiSnipsEdit<CR>

" Edit vimrc
nnoremap <leader>cv :e ~/.vimrc<CR>

" Edit Zshrc
nnoremap <leader>cz :e ~/.zshrc<CR>

" Edit vim configs
nnoremap <leader>ea :e ~/.vim/config/autocmds.vim<CR>
nnoremap <leader>ec :e ~/.vim/config/cmds.vim<CR>
nnoremap <leader>eg :e ~/.vim/config/general.vim<CR>
nnoremap <leader>em :e ~/.vim/config/maps.vim<CR>
nnoremap <leader>ep :e ~/.vim/config/plugs.vim<CR>


" Git
nnoremap <leader>g0 :diffget //3<CR>
nnoremap <leader>g1 :diffget //2<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Commits<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>

" Leader+h to show hover documentation
nnoremap <leader>h :call <SID>show_documentation()<CR>

" List of marks
nnoremap <leader>mk :Marks<CR>

" Organize imports
nnoremap <leader>or :OR<CR>

" Vim-Plug ease of use :D
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>

" Find the current buffers file in the nerd tree
nnoremap <leader>rf :NERDTreeFind<CR>

" Reload the rc configuration
nnoremap <leader>rl :so ~/.gvimrc<CR>

" rn and rN to switch between relative line numbers
nnoremap <leader>rN :set relativenumber!<CR>
nnoremap <leader>rn :set relativenumber<CR>

" List of snippets
nnoremap <leader>sn :Snippets<CR>

" Open a terminal in a horizontal split
nnoremap <leader>T :term<CR>
" Open a terminal in a vertical split
nnoremap <leader>t :vert term<CR>

" Trim whitespace
nnoremap <leader>rw :Trim<CR>

" Open undo-tree panel
nnoremap <leader>u :UndotreeToggle<CR>

" Delete the buffer and the window
nnoremap <leader>W :bd<CR>
" Delete the buffer but leave the window
nnoremap <leader>w :BD<CR>

" Maximizer plugin maps to _
nnoremap _ :MaximizerToggle<CR>
vnoremap _ :MaximizerToggle<CR>gv

" Cmd 1-5 to select the given split
noremap <D-1> 1<C-w><C-w>
noremap <D-2> 2<C-w><C-w>
noremap <D-3> 3<C-w><C-w>
noremap <D-4> 4<C-w><C-w>
noremap <D-5> 5<C-w><C-w>

" Cmd+Shift+E to open/close nerd tree explorer
noremap <D-E> :NERDTreeToggle<CR>

" Cmd+Shift+F Perform a global search in current project
noremap <D-F> :Ag<CR>

" Tab navigation using Ctrl+Shift+H (previous) and Ctrl+Shift+L (next)
noremap <C-H> :tabN<CR>
noremap <C-L> :tabn<CR>

" Ctrl+Shift+O to see a list of tags in the current buffer
noremap <C-O> :BTags<CR>

" Ctrl+p to see a list of files
noremap <C-p> :GFiles<CR>
noremap <D-P> :Files<CR>

" Cmd+/ to toggle comment
noremap <D-/> :Commentary<CR>

" Cmd+j, Cmd+k to move lines up and down
nnoremap <D-j> :m .+1<CR>==<C-z>
nnoremap <D-k> :m .-2<CR>==<C-z>
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv

" ?????
xmap <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>

" Slash plugin map
noremap <plug>(slash-after) zz

" Next/previous error
nmap ]e :call CocAction('diagnosticNext')<cr>
nmap [e :call CocAction('diagnosticPrevious')<cr>

" Next/Previous git hunk
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

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

" Disable all mouse scrolling
set mouse=nicr
nmap <ScrollWheelUp> <nop>
nmap <S-ScrollWheelUp> <nop>
nmap <C-ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
nmap <S-ScrollWheelDown> <nop>
nmap <C-ScrollWheelDown> <nop>
nmap <ScrollWheelLeft> <nop>
nmap <S-ScrollWheelLeft> <nop>
nmap <C-ScrollWheelLeft> <nop>
nmap <ScrollWheelRight> <nop>
nmap <S-ScrollWheelRight> <nop>
nmap <C-ScrollWheelRight> <nop>

