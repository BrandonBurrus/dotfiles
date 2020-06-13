" Brandon Burrus .vimrc

syn on
let mapleader=" "

" General config
set nocompatible
set encoding=UTF-8
set directory^=$HOME/.vim/tmp//
set undodir=~/.vim/undodir
set nu
set modelines=0
set mouse=v
set autoindent
set lazyredraw
set undolevels=10000
set noswapfile
set nobackup
set undofile
set splitbelow
set splitright
set path+=**
set guioptions=
set relativenumber
set nowrap
set antialias
set nocursorline
set nowrap
set numberwidth=4
set noru
set hlsearch
set incsearch
set smartcase
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noerrorbells
set novisualbell
set scrolloff=50
set cmdheight=1
set updatetime=50
set linespace=2
set hidden
filetype plugin on
nohls

" Keymaps
nnoremap <D-k> :m .-2<CR>==<C-z>
nnoremap <D-j> :m .+1<CR>==<C-z>
inoremap <D-j> <Esc>:m .+1<CR>==gi<C-z>
inoremap <D-k> <Esc>:m .-2<CR>==gi<C-z>
vnoremap <D-j> :m '>+1<CR>gv=gv<C-z>
vnoremap <D-k> :m '<-2<CR>gv=gv<C-z>
nnoremap <silent> <leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <leader>0 :e ~/.vimrc<CR>
nnoremap <ESC><ESC> :nohls<CR><C-z>
nnoremap <leader>\ :so % <CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>w :bd<CR>
nnoremap <leader>t :term<CR>
nnoremap <leader>gc :Commits<CR>
nnoremap <leader>s :Snippets<CR>
nnoremap <leader>b :Buffers<CR>
noremap <SPACE> <Nop>
noremap <D-E> :Explore<CR>
noremap <silent> <C-p> :FZF!<CR>
noremap <silent> <D-/> :Commentary<CR>
noremap <D-H> <C-w>R
noremap <D-L> <C-w>R
noremap <D-1> 1<C-w><C-w>
noremap <D-2> 2<C-w><C-w>
noremap <D-3> 3<C-w><C-w>
noremap <D-4> 4<C-w><C-w>
noremap <D-5> 5<C-w><C-w>
noremap <silent> <C-H> :tabN<CR>
noremap <silent> <C-L> :tabn<CR>
map <leader>/ :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Set shell
set shell=/bin/zsh

" Plugins
call plug#begin("~/.vim/autoload")
Plug 'danro/rename.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-emoji'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
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
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:prettier#config#parser="babylon"
let g:prettier#autoformat=1
let g:jsx_ext_required=0
let g:ycm_add_preview_to_completeopt=0
let g:indentLine_color_gui = '#2f2f2f'
let g:airline_theme='minimalist'
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%{strftime("%H:%M")}'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:user_emmet_install_global = 1
let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_sig_column_always = 1
let g:ale_sign_error = emoji#for('exclamation')
let g:ale_sign_warning = emoji#for('small_orange_diamond')
let g:ale_lint_on_enter = 1
let g:startify_custom_header = []
let g:netrw_liststyle = 3
let g:netrw_banner = 0

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
autocmd BufRead,BufNewFile *.mdx set syntax=markdown
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

colorscheme neonchalk

