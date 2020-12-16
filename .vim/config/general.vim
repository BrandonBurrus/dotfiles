" General vim configuration

set encoding=utf-8              " Use UTF-8 encoding in buffers

" Indentation
set autoindent                  " Use the previous lines indentation when adding new lines
set expandtab                   " Use spaces instead of tabs
set smarttab                    " Insert the appropriate number of tabs when indenting
set tabstop=2                   " Use 2 spaces as the tab stop for buffers
set softtabstop=2               " Count 2 spaces as a tab when editing indentation
set shiftwidth=2                " Use 2 spaces be default for automatic indentation

" Search
set hlsearch                    " Highlight search matches
set incsearch                   " Show partial matches while entering a search
set smartcase                   " Smartly ignore case sensitivity when searching

" Line Numbers
set number                      " Enable line numbers
set numberwidth=4               " Use 4 character columns for line numbers
set relativenumber              " Enable relative line numbers

" Splits
set splitbelow                  " Horizontal splits always open below the current buffer
set splitright                  " Vertical splits always open on the right of the current buffer

" Undo
set undodir=~/.vim/undodir      " Directory to use for persisting undo history
set undofile                    " Enable undo persistence via undo files
set undolevels=10000            " Number of changes to remember that can be undone

" Cursor
set guicursor+=a:blinkon0       " Disable cursor blinking
set guioptions=                 " Reset to the default gui options
set nocursorline                " Disable adding highlight group to the line the cursor is on

" Auto-complete
set completeopt+=preview        " Show extra preview info in auto-complete menu
set wildmenu                    " Enable auto-complete menu

" Files
set autoread                    " Auto-detect file changes outside of vim
set directory^=$HOME/.vim/tmp// " Place swap (.swp) files in ~/.vim/tmp
set nobackup                    " Disable backup file when overwriting an existing file
set nowrap                      " Disable line wrapping
set path+=**                    " Use the current path as the root to be indexed for gf
set scrolloff=0                 " How many lines can the screen scroll beyond the last line in the buffer

" Notifications
set belloff=all                 " Turn off the notification sound for everything
set noerrorbells                " Disable error bell for editor errors/warnings
set novisualbell                " Disable visual (flashing) bell for notifications
set t_vb=                       " Disable visual bells

" Folding
set foldignore=                 " Turn off any fold ignoring
set foldlevelstart=99           " Start auto-folding at the given indentation level
set foldmethod=indent           " Use indentation to auto-create folds

" Command line
set cmdheight=1                 " Use a single line for Ex commands
set shell=/bin/zsh              " Use Zsh as the preferred shell
set shortmess=a                 " Always prefer shorter error msgs
set showcmd                     " Show the result of cmds in the cmd line

" Extra Feedback
set noruler                     " Disable showing the current line/column the cursor is at
set noshowmode                  " Disable showing current mode
set signcolumn=yes              " Always show the sign column (on the left)

" Visual Enhancements
set antialias                   " Turn on Anti-Aliasing
set lazyredraw                  " Disable screen redrawing while executing macros, registers or other commands.
set linespace=2                 " Num of pixels to add between every line vertically
set modelines=0                 " Disable mode lines

" Misc
set nospell                     " Disable vim spellchecker (use coc-spell-checker instead)
set sessionoptions-=blank       " Do no store empty windows in saved sessions
set updatetime=100              " How often to store file changes in swap files (recovery/auto-save)
set fillchars+=vert:⎸

