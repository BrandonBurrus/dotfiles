" Install Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin("~/.vim/autoload")

" Motions
  " Modify default word-wise motions to respect camelcasing
  Plug 'bkad/camelcasemotion'
  " Apply a sort as a motion
  Plug 'christoomey/vim-sort-motion'
  " More advanced jumping motions by search
  Plug 'easymotion/vim-easymotion'
  " Display easymotion jumps using incsearch
  Plug 'haya14busa/incsearch-easymotion.vim'
  " Replace s and S as a quick two-letter jump
  Plug 'justinmk/vim-sneak'
  " Multi-cursor editing
  Plug 'terryma/vim-multiple-cursors'

" Text Objects
  " Comments as text objects
  Plug 'glts/vim-textobj-comment'
  " Entire buffer as a text object
  Plug 'kana/vim-textobj-entire'
  " Function definitions themselves as text objects
  Plug 'kana/vim-textobj-function'
  " Current line as a text object
  Plug 'kana/vim-textobj-line'
  " Kana custom text-objects required plugin
  Plug 'kana/vim-textobj-user'
  " Indentation groups as text object
  Plug 'michaeljsmith/vim-indent-object'
  " Function parameters as text object
  Plug 'sgur/vim-textobj-parameter'
  " Extended text objects for more characters
  Plug 'wellle/targets.vim'

" Actions
  " Automatically update closing tag when changing opening tag
  Plug 'AndrewRadev/tagalong.vim'
  " Split/join complex expressions
  Plug 'AndrewRadev/splitjoin.vim'
  " Bunch of pre-defined snippets
  Plug 'honza/vim-snippets'
  " Toggle boolean-like works
  Plug 'lukelbd/vim-toggle'
  " Swap two motion-selected blocks of text
  Plug 'tommcdo/vim-exchange'
  " easier commenting
  Plug 'tpope/vim-commentary'
  " unix-like helper commands
  Plug 'tpope/vim-eunuch'
  " make plugin maps repeatable
  Plug 'tpope/vim-repeat'
  " surround motion with a character or input
  Plug 'tpope/vim-surround'
  " manipulate dates and times using Ctrl+A and Ctrl+X
  Plug 'tpope/vim-speeddating'

" Editor
  " Snippets manager
  Plug 'SirVer/ultisnips'
  " Auto add closing xml-like tags
  Plug 'alvan/vim-closetag'
  " Better increment search
  Plug 'haya14busa/incsearch.vim'
  " Automatically close pairs like brackets
  Plug 'jiangmiao/auto-pairs'
  " Better search
  Plug 'junegunn/vim-slash'
  " Better start screen
  Plug 'mhinz/vim-startify'
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Better buffer closing management
  Plug 'qpkorr/vim-bufkill'
  " Vim integration with the Dash documentation app
  Plug 'rizzatti/dash.vim'
  " Maximize buffer windows temporarily
  Plug 'szw/vim-maximizer'
  " Auto set indentation settings based on the file
  Plug 'tpope/vim-sleuth'
  " Show f and t possibilities on the current lines
  Plug 'unblevable/quick-scope'

" Navigation
  " Global find and replace
  Plug 'dyng/ctrlsf.vim'
  " Fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Visual file explorer
  Plug 'scrooloose/nerdtree'
  " Use visual mode to make edits to multiple files at the same time
  Plug 'PhilRunninger/nerdtree-visual-selection'
  " Custom status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Icons :D
  Plug 'ryanoasis/vim-devicons'

" Syntax
  " General syntax groups
  Plug 'sheerun/vim-polyglot'
  " Java syntax groups
  Plug 'BrandonBurrus/java-syntax.vim'
  " TypeScript syntax groups
  Plug 'Quramy/tsuquyomi'
  Plug 'peitalin/vim-jsx-typescript'
  " Elm syntax groups
  Plug 'elmcast/elm-vim'

" Git
  " Add git hunk signs to left gutter
  Plug 'airblade/vim-gitgutter'
  " Git commands
  Plug 'tpope/vim-fugitive'

" Misc
  " Auto set the current working dir to the dir containing the .git dir
  Plug 'airblade/vim-rooter'
  " Display marks in the left gutter
  Plug 'kshenoy/vim-signature'
  " Automatic tag management
  Plug 'ludovicchabant/vim-gutentags'
  " Traverse undo history visually
  Plug 'mbbill/undotree'
  " Auto-save and manage sessions
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
      \ "coc-jest",
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

" Load Prettier
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Load ESLint
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Nerd Tree
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeIgnore=['node_modules']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=50

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"

" Airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
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

" Closetag
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.js,*.ts'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascriptreact,typescript,typescriptreact'
let g:closetag_shortcut = '>'

" FZF
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=log'

" Git gutter
let g:gitgutter_show_msg_on_hunk_jumping = 1

" Gutentags
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_modules = ['ctags']
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

"JSX
let g:jsx_ext_required = 0

" Quick scope
let g:qs_enable = 1
let g:qs_max_chars = 104

" Startify
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_files_number = 10
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_session_sort = 1
let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'

let g:startify_lists = [
      \ { 'type': 'sessions',   'header': ['   Projects'] },
      \ { 'type': 'files',      'header': ['   Recently opened'] },
      \ { 'type': 'bookmarks',  'header': ['   Bookmarks'] },
      \ { 'type': 'commands',   'header': ['   Commands'] },
      \ ]

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ ]

" Toggle
let g:toggle_map = "<C-b>"
let g:vrfr_rg = 'true'

" Web dev icons
" let g:WebDevIconsOS = 'Darwin'
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['java'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['properties'] = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

let loadedmatchparen = 0

