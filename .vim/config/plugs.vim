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
  Plug 'terryma/vim-multiple-cursors'

  " Text Objects
  Plug 'glts/vim-textobj-comment'
  Plug 'kana/vim-textobj-entire'
  Plug 'kana/vim-textobj-function'
  Plug 'kana/vim-textobj-line'
  Plug 'kana/vim-textobj-user'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'sgur/vim-textobj-parameter'
  Plug 'wellle/targets.vim'

  " Actions
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'AndrewRadev/splitjoin.vim'
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
  Plug 'qpkorr/vim-bufkill'
  Plug 'rizzatti/dash.vim'
  Plug 'szw/vim-maximizer'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-vinegar'
  Plug 'unblevable/quick-scope'
  Plug 'vim-airline/vim-airline-themes'

  " Navigation
  Plug 'PhilRunninger/nerdtree-visual-selection'
  Plug 'dyng/ctrlsf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
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
  Plug 'airblade/vim-rooter'
  Plug 'kshenoy/vim-signature'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-obsession'

call plug#end()

" Coc Extensions
let g:coc_global_extensions = [
      \ "coc-angular",
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

" Load prettier
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Load eslint
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Plugin configuration
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeIgnore=['node_modules']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=50
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:airline#extensions#coc#error_symbol = 'E:'
let g:airline#extensions#coc#warning_symbol = 'W:'
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#nerdtree_statusline = 0
let g:airline#extensions#searchcount#enabled = 0
let g:airline#extensions#searchcount#enabled = 0
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#wordcount#enabled = 0
let g:airline_inactive_alt_sep=1
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'
let g:airline_section_a = ''
let g:airline_section_b = airline#section#create(['branch'])
let g:airline_section_c = ''
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%{strftime("%I:%M %p")}'
let g:airline_symbols.branch = ''
let g:airline_symbols.dirty = ' '
let g:airline_symbols.notexists = ''
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.js,*.ts'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascriptreact,typescript,typescriptreact'
let g:closetag_shortcut = '>'
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=log'
let g:gitgutter_show_msg_on_hunk_jumping = 1
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_modules = ['ctags']
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:indentguides_spacechar = '│'
let g:jsx_ext_required = 0
let g:qs_enable = 1
let g:qs_max_chars = 104
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_files_number = 10
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_session_sort = 1
let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'
let g:toggle_map = "<C-b>"
let g:vrfr_rg = 'true'
let g:webdevicons_conceal_nerdtree_brackets = 1
let loadedmatchparen = 0

let g:startify_lists = [
      \ { 'type': 'sessions',   'header': ['   Projects'] },
      \ { 'type': 'files',      'header': ['   Recently opened'] },
      \ { 'type': 'bookmarks',  'header': ['   Bookmarks'] },
      \ { 'type': 'commands',   'header': ['   Commands'] },
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

