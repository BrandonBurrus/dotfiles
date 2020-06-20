" Brandon Burrus .vimrc

syn on
let mapleader=" "

colorscheme neonchalk

" General config
set antialias
set autoindent
set belloff=all
set cmdheight=1
set completeopt-=preview
set directory^=$HOME/.vim/tmp//
set encoding=UTF-8
set expandtab
set guicursor+=a:blinkon0
set guicursor=
set guioptions=
set hidden
set hlsearch
set incsearch
set lazyredraw
set linespace=2
set modelines=0
set mouse=v
set nobackup
set nocompatible
set nocursorline
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
set scrolloff=50
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

filetype plugin on

" Keymaps
noremap <SPACE> <Nop>
inoremap <D-j> <Esc>:m .+1<CR>==gi<C-z>
inoremap <D-k> <Esc>:m .-2<CR>==gi<C-z>
nnoremap <D-j> :m .+1<CR>==<C-z>
nnoremap <D-k> :m .-2<CR>==<C-z>
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv
nnoremap <ESC><ESC> :nohls<CR><C-z>
nnoremap <silent><Right> :vertical resize +4<CR>
nnoremap <silent><Left> :vertical resize -4<CR>
nnoremap <silent><Down> :resize +2<CR>
nnoremap <silent><Up> :resize -2<CR>
nnoremap <leader>0 :e ~/.vimrc<CR>
nnoremap <leader>9 :UltiSnipsEdit<CR>
nnoremap <leader>8 :e ~/.vim/colors/neonchalk.vim<CR>
nnoremap <leader>7 :CocConfig<CR>
nnoremap <silent> <leader>, :bp <CR>
nnoremap <silent> <leader>. :bn <CR>
nnoremap <silent> <leader>\ :so % <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>g1 :diffget //2<CR>
nnoremap <silent> <leader>g2 :diffget //3<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Commits<CR>
nnoremap <silent> <leader>gd :Gvdiff<CR>
nnoremap <silent> <leader>gs :G<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>l :Lines<CR>
nnoremap <silent> <leader>m :Marks<CR>
nnoremap <silent> <leader>s :Snippets<CR>
nnoremap <silent> <leader>t :term<CR>
nnoremap <silent> <leader>u :UndotreeToggle<CR>
nnoremap <silent> <leader>x :Windows<CR>
nnoremap <silent> <leader>w :bd<CR>
noremap <D-1> 1<C-w><C-w>
noremap <D-2> 2<C-w><C-w>
noremap <D-3> 3<C-w><C-w>
noremap <D-4> 4<C-w><C-w>
noremap <D-5> 5<C-w><C-w>
noremap <D-E> :NERDTreeToggle<CR>
noremap <D-H> <C-w>R
noremap <D-L> <C-w>R
noremap <silent> <C-H> :tabN<CR>
noremap <silent> <C-L> :tabn<CR>
noremap <silent> <C-p> :Files!<CR>
noremap <silent> <D-/> :Commentary<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>rr <Plug>(coc-rename)
nmap <silent>cr :CocRestart<CR>
map <leader>/ :echo "" . synIDattr(synID(line("."),col("."),1),"name") . ' : '
      \ . synIDattr(synID(line("."),col("."),0),"name") . " : "
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ""<CR>
nmap <D-R> <Plug>(coc-rename)
noremap - -

" Use K to trigger documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

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

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Set shell
set shell=/bin/zsh

" Install Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin("~/.vim/autoload")
  Plug 'BrandonBurrus/java-syntax.vim'
  Plug 'Quramy/tsuquyomi'
  Plug 'SirVer/ultisnips'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'airblade/vim-rooter'
  Plug 'ap/vim-css-color'
  Plug 'easymotion/vim-easymotion'
  Plug 'haya14busa/incsearch.vim'
  Plug 'honza/vim-snippets'
  Plug 'itchyny/vim-gitbranch'
  Plug 'janko-m/vim-test'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-emoji'
  Plug 'junegunn/vim-slash'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'rizzatti/dash.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'sheerun/vim-polyglot'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tommcdo/vim-exchange'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dadbod'
  Plug 'tpope/vim-dotenv'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-vinegar'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Coc Extensions
let g:coc_global_extensions = [
      \ "coc-css",
      \ "coc-cssmodules",
      \ "coc-docker",
      \ "coc-emmet",
      \ "coc-eslint",
      \ "coc-flutter",
      \ "coc-go",
      \ "coc-highlight",
      \ "coc-html",
      \ "coc-java",
      \ "coc-jedi",
      \ "coc-json",
      \ "coc-markdownlint",
      \ "coc-pairs",
      \ "coc-omnisharp",
      \ "coc-prettier",
      \ "coc-python",
      \ "coc-tailwindcss",
      \ "coc-tsserver",
      \ "coc-xml",
      \ "coc-yaml",
      \ "coc-yank"
      \ ]

let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeMinimalUI = 1
let g:SuperTabContextDefaultCompletionType = '<c-n>'
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_section_b = gitbranch#name()
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%{strftime("%H:%M")}'
let g:airline_theme='minimalist'
let g:fzf_buffers_jump = 1
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
let g:startify_custom_header = []
let g:vrfr_rg = 'true'
let loadedmatchparen = 0

" Font
if has ('gui_running')
  set guifont=Dank_Mono:h16
endif

" Custom commands
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Auto commands
autocmd! GUIEnter * set vb t_vb=
autocmd BufRead,BufNewFile .babelrc setfiletype json
autocmd BufRead,BufNewFile .prettierrc setfiletype json
autocmd BufRead,BufNewFile .aliases setfiletype bash
autocmd BufRead,BufNewFile *.mdx set syntax=markdown
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd VimResized * wincmd =
autocmd StdinReadPre * let s:std_in=1
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd BufWinEnter *
  \ if !exists('t:startify_new_tab')
  \     && empty(expand('%'))
  \     && empty(&l:buftype)
  \     && &l:modifiable |
  \   let t:startify_new_tab = 1 |
  \   Startify |
  \ endif
autocmd StdinReadPre * let s:std_in=1

" Vertical bar overrides
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:indentLine_char = '|'
set fillchars+=vert:⎸

