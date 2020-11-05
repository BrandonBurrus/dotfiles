" Brandon Burrus .vimrc

syn on
colorscheme neonchalk

let mapleader=" "

" General config

set antialias
set autoindent
set autoread
set belloff=all
set cmdheight=1
set completeopt+=preview
set cursorline
set directory^=$HOME/.vim/tmp//
set encoding=UTF-8
set expandtab
set foldignore=
set foldlevelstart=99
set foldmethod=indent
set guicursor+=a:blinkon0
set guioptions=
set hidden
set hlsearch
set incsearch
set lazyredraw
set linespace=2
set ma
set modelines=0
set mouse=v
set nobackup
set nocompatible
set noerrorbells
set noru
set noshowmode
set nospell
set noswapfile
set novisualbell
set nowrap
set nu
set numberwidth=4
set path+=**
set re=0
set relativenumber
set scrolloff=0
set sessionoptions-=blank
set shell=/bin/zsh
set shiftwidth=2
set shortmess+=c
set shortmess=a
set signcolumn=yes
set smartcase
set smarttab
set softtabstop=2
set splitbelow
set splitright
set t_vb=
set tabstop=2
set undodir=~/.vim/undodir
set undofile
set undolevels=10000
set updatetime=100
set wildmenu
filetype plugin indent on

" Keymaps
inoremap <D-j> <Esc>:m .+1<CR>==gi<C-z>
inoremap <D-k> <Esc>:m .-2<CR>==gi<C-z>
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
map F <Plug>Sneak_F
map T <Plug>Sneak_T
map f <Plug>Sneak_f
map t <Plug>Sneak_t
nmap <D-R> <Plug>(coc-rename)
nmap <leader>ca :CocAction<CR>
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent>cr :CocRestart<CR>
nnoremap <D-j> :m .+1<CR>==<C-z>
nnoremap <D-k> :m .-2<CR>==<C-z>
nnoremap <D-'> cs'`<CR>
nnoremap <ESC><ESC> :nohls<CR><C-z>
nnoremap <silent> <leader>1 :set relativenumber<CR>
nnoremap <silent> <leader>2 :set relativenumber!<CR>
nnoremap <D-7> :CocConfig<CR>
nnoremap <D-8> :e ~/.vim/colors/neonchalk.vim<CR>
nnoremap <D-9> :UltiSnipsEdit<CR>
nnoremap <D-0> :e ~/.vimrc<CR>
nnoremap <silent> <leader>, :bp <CR>
nnoremap <silent> <leader>. :bn <CR>
nnoremap <silent> <leader>\ :so ~/.vimrc<CR>
nnoremap <silent> <leader>b :call fzf#vim#buffers()<CR>
nnoremap <silent> <leader>cp :SClose<CR>
nnoremap <silent> <leader>g1 :diffget //2<CR>
nnoremap <silent> <leader>g2 :diffget //3<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Commits<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gd :Gvdiff<CR>
nnoremap <silent> <leader>gh :NERDTreeCWD<CR>
nnoremap <silent> <leader>gs :G<CR>
nnoremap <silent> <leader>f :CocAction<CR>
nmap <silent> <leader>d <Plug>DashSearch
nmap <silent> <leader><leader>d <Plug>DashGlobalSearch
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>l :Lines<CR>
nnoremap <silent> <leader>m :Marks<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>rf :NERDTreeFind<CR>
nnoremap <silent> <leader>s :Snippets<CR>
nnoremap <silent> <leader>t :vert term<CR>
nnoremap <silent> <leader>T :term<CR>
nnoremap <silent> <leader>u :UndotreeToggle<CR>
nnoremap <silent> <leader>w :BD<CR>
nnoremap <silent> <leader>W :bd<CR>
nnoremap <silent> <leader><ESC> :Startify<CR>
nnoremap <silent> <Down> :resize +2<CR>
nnoremap <silent> <Left> :vertical resize -2<CR>
nnoremap <silent> <Right> :vertical resize +2<CR>
nnoremap <silent> <Up> :resize -2<CR>
nnoremap <silent> <D-H> :bp<CR>
nnoremap <silent> <D-L> :bn<CR>
noremap - -
noremap <D-1> 1<C-w><C-w>
noremap <D-2> 2<C-w><C-w>
noremap <D-3> 3<C-w><C-w>
noremap <D-4> 4<C-w><C-w>
noremap <D-5> 5<C-w><C-w>
noremap <D-E> :NERDTreeToggle<CR>
noremap <D-F> :Ag!<CR>
noremap <SPACE> <Nop>
noremap <silent> <C-H> :tabN<CR>
noremap <silent> <C-L> :tabn<CR>
noremap <silent> <C-p> :GFiles<CR>
noremap <silent> <D-/> :Commentary<CR>
noremap <silent> <D-O> :BTags<CR>
noremap <silent> <D-P> :Files<CR>
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

map <leader>/ :echo "" . synIDattr(synID(line("."),col("."),1),"name") . ' : '
      \ . synIDattr(synID(line("."),col("."),0),"name") . " : "
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ""<CR>

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Function to trigger hover docs
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

" Install Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin("~/.vim/autoload")

  " Motions
  Plug 'bkad/camelcasemotion'
  Plug 'christoomey/vim-sort-motion'
  Plug 'easymotion/vim-easymotion'
  Plug 'haya14busa/incsearch-easymotion.vim'
  Plug 'justinmk/vim-sneak'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'terryma/vim-multiple-cursors'

  " Actions
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'andrewradev/splitjoin.vim'
  Plug 'honza/vim-snippets'
  Plug 'lukelbd/vim-toggle'
  Plug 'tommcdo/vim-exchange'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'

  " Editor
  Plug 'SirVer/ultisnips'
  Plug 'alvan/vim-closetag'
  Plug 'haya14busa/incsearch.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/vim-slash'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'rizzatti/dash.vim'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-vinegar'
  Plug 'unblevable/quick-scope'
  Plug 'vim-airline/vim-airline-themes'

  " Navigation
  Plug 'PhilRunninger/nerdtree-visual-selection'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'qpkorr/vim-bufkill'
  Plug 'scrooloose/nerdtree' |  Plug 'vim-airline/vim-airline' | Plug 'ryanoasis/vim-devicons'

  " Syntax
  Plug 'BrandonBurrus/java-syntax.vim'
  Plug 'Quramy/tsuquyomi'
  Plug 'elmcast/elm-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'sheerun/vim-polyglot'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'itchyny/vim-gitbranch'
  Plug 'tpope/vim-fugitive'

  " Misc
  Plug 'JamshedVesuna/vim-markdown-preview'
  Plug 'airblade/vim-rooter'
  Plug 'kshenoy/vim-signature'
  Plug 'lambdalisue/vim-fullscreen'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-obsession'

call plug#end()

" Coc Extensions
let g:coc_global_extensions = [
      \ "coc-css",
      \ "coc-cssmodules",
      \ "coc-docker",
      \ "coc-emmet",
      \ "coc-flutter",
      \ "coc-go",
      \ "coc-html",
      \ "coc-java",
      \ "coc-json",
      \ "coc-omnisharp",
      \ "coc-sourcekit",
      \ "coc-spell-checker",
      \ "coc-tailwindcss",
      \ "coc-tsserver",
      \ "coc-vetur",
      \ "coc-yaml",
      \ "coc-yank"
      \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeIgnore=['node_modules']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=44
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_section_a = ' BrandonBurrus'
let g:airline_section_b = airline#section#create(['branch'])
let g:airline_section_c = ''
let g:airline_section_z = '%{strftime("%I:%M %p")}'
let g:airline_inactive_alt_sep=1
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.notexists = ' '
let g:airline_symbols.branch = ''
let g:airline_symbols.dirty = ' '
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.js,*.ts'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascriptreact,typescript,typescriptreact'
let g:fzf_buffers_jump = 1
let g:fzf_preview_window = ''
let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=log'
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_modules = ['ctags']
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:jsx_ext_required = 0
let g:netrw_banner = 0
let g:netrw_browsex_viewer = 'google-chrome'
let g:netrw_list_hide= '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.git'
let g:netrw_liststyle = 3
let g:qs_enable = 1
let g:qs_max_chars = 104
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_files_number = 12
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_session_sort = 1
let g:toggle_map = "<C-b>"
let g:vrfr_rg = 'true'
let g:webdevicons_conceal_nerdtree_brackets = 1
" let g:webdevicons_enable = 0
" let g:webdevicons_enable_airline_statusline = 0
" let g:webdevicons_enable_airline_tabline = 0
" let g:webdevicons_enable_nerdtree = 0
" let g:webdevicons_enable_startify = 0
let loadedmatchparen = 0
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_hotkey='<D-m>'

let g:startify_lists = [
      \ { 'type': 'sessions',   'header': ['  Projects'] },
      \ { 'type': 'files',      'header': ['  Recently opened'] },
      \ { 'type': 'bookmarks',  'header': ['  Bookmarks'] },
      \ { 'type': 'commands',   'header': ['  Commands'] },
      \ ]

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ ]

let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': ' ',
        \ '1': ' ',
        \ '2': ' ',
        \ '3': ' ',
        \ '4': ' ',
        \ '5': ' ',
        \ '6': ' ',
        \ '7': ' ',
        \ '8': ' ',
        \ '9': ' '
        \}

let g:kite_snippets=0
let g:kite_supported_languages = ['python', 'javascript', 'go']

" Custom header
let g:startify_custom_header = 'startify#pad(startify#fortune#boxed("Brandon"))'

" Custom commands
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Auto commands
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd BufRead,BufNewFile *.md setlocal textwidth=100
autocmd BufRead,BufNewFile *.mdx set syntax=markdown
autocmd BufRead,BufNewFile *.zsh-theme set syntax=bash
autocmd BufRead,BufNewFile *.mdx setlocal textwidth=100
autocmd BufRead,BufNewFile .aliases setfiletype bash
autocmd BufRead,BufNewFile .babelrc setfiletype json
autocmd BufRead,BufNewFile .prettierrc setfiletype json
autocmd CompleteDone * if !pumvisible() | pclose | endif
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd StdinReadPre * let s:std_in=1

" Vertical bar overrides
let g:indentLine_char = '|'
set fillchars+=vert:⎸

" Disable mouse scrolling
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

nohls
