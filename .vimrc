" Brandon Burrus .vimrc

syn on
let mapleader=" "

colorscheme neonchalk

" General config
set antialias
set autoindent
set cmdheight=1
set directory^=$HOME/.vim/tmp//
set encoding=UTF-8
set expandtab
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
set shortmess=a
set signcolumn=yes
set smartcase
set smarttab
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
set undodir=~/.vim/undodir
set undofile
set undolevels=10000
set updatetime=50
set wildmenu
set noshowmode
filetype plugin on
nohls

" Keymaps
noremap <SPACE> <Nop>
inoremap <D-j> <Esc>:m .+1<CR>==gi<C-z>
inoremap <D-k> <Esc>:m .-2<CR>==gi<C-z>
nmap <leader>h <plug>(YCMHover)
nnoremap <D-j> :m .+1<CR>==<C-z>
nnoremap <D-k> :m .-2<CR>==<C-z>
nnoremap <ESC><ESC> :nohls<CR><C-z>
nnoremap <silent><Right> :vertical resize +4<CR>
nnoremap <silent><Left> :vertical resize -4<CR>
nnoremap <silent><Up> :resize +2<CR>
nnoremap <silent><Down> :resize -2<CR>
nnoremap <leader>0 :e ~/.vimrc<CR>
nnoremap <leader>9 :UltiSnipsEdit<CR>
nnoremap <silent> <leader>, :bp <CR>
nnoremap <silent> <leader>. :bn <CR>
nnoremap <silent> <leader>\ :so % <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>g1 :diffget //2<CR>
nnoremap <silent> <leader>g2 :diffget //3<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Commits<CR>
nnoremap <silent> <leader>gs :G<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>l :Lines<CR>
nnoremap <silent> <leader>m :Marks<CR>
nnoremap <silent> <leader>s :Snippets<CR>
nnoremap <silent> <leader>t :term<CR>
nnoremap <silent> <leader>u :UndotreeToggle<CR>
nnoremap <silent> <leader>x :Windows<CR>
nnoremap <silent> <leader>w :bd<CR>
nnoremap gd :YcmCompleter GoTo<CR>
noremap <D-1> 1<C-w><C-w>
noremap <D-2> 2<C-w><C-w>
noremap <D-3> 3<C-w><C-w>
noremap <D-4> 4<C-w><C-w>
noremap <D-5> 5<C-w><C-w>
noremap <D-E> :Explore<CR>
noremap <D-H> <C-w>R
noremap <D-L> <C-w>R
noremap <silent> <C-H> :tabN<CR>
noremap <silent> <C-L> :tabn<CR>
noremap <silent> <C-p> :GFiles!<CR>
noremap <silent> <D-/> :Commentary<CR>
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv
map <leader>/ :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
noremap - -

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
  Plug 'SirVer/ultisnips'
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-css-color'
  Plug 'easymotion/vim-easymotion'
  Plug 'ervandew/supertab'
  Plug 'haya14busa/incsearch.vim'
  Plug 'honza/vim-snippets'
  Plug 'itchyny/vim-gitbranch'
  Plug 'janko-m/vim-test'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-emoji'
  Plug 'junegunn/vim-slash'
  Plug 'mattn/emmet-vim'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'rizzatti/dash.vim'
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
  Plug 'w0rp/ale'
  Plug 'ycm-core/YouCompleteMe'
call plug#end()

" Plugin configs
let loadedmatchparen = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_list_hide= '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.git'
let g:prettier#config#parser="babylon"
let g:prettier#autoformat=1
let g:jsx_ext_required=0
let g:ycm_add_preview_to_completeopt=0
let g:airline_theme='minimalist'
let g:airline_section_b = gitbranch#name()
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%{strftime("%H:%M")}'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:user_emmet_install_global = 1
let g:ale_fixers = {
      \   '*': ['trim_whitespace'],
      \   'javascript': ['prettier', 'eslint'],
      \   'javascriptreact': ['prettier', 'eslint'],
      \   'typescript': ['prettier', 'eslint'],
      \   'typescriptreact': ['prettier', 'eslint']
      \ }
let g:ale_fix_on_save = 1
let g:ale_sig_column_always = 1
let g:ale_sign_error = emoji#for('exclamation')
let g:ale_sign_warning = emoji#for('small_orange_diamond')
let g:ale_lint_on_enter = 1
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1
let g:ale_completion_tsserver_autoimport = 1
let g:startify_custom_header = []
let g:ycm_auto_hover=''
let g:yats_host_keyword = 1
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=log'
let g:netrw_browsex_viewer = 'google-chrome'

" Font
if has ('gui_running')
  set guifont=Dank_Mono:h16
endif

set guicursor+=a:blinkon0
set belloff=all
set t_vb=
set completeopt-=preview

" Auto commands
autocmd! GUIEnter * set vb t_vb=
autocmd BufRead,BufNewFile .babelrc setfiletype json
autocmd BufRead,BufNewFile .prettierrc setfiletype json
autocmd BufRead,BufNewFile *.mdx set syntax=markdown
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd VimResized * wincmd =
autocmd StdinReadPre * let s:std_in=1
autocmd BufWinEnter *
  \ if !exists('t:startify_new_tab')
  \     && empty(expand('%'))
  \     && empty(&l:buftype)
  \     && &l:modifiable |
  \   let t:startify_new_tab = 1 |
  \   Startify |
  \ endif

" Vertical bar overrides
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:indentLine_char = '|'
set fillchars+=vert:⎸

