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
  " Kana custom text-objects required dependency plugin
  Plug 'kana/vim-textobj-user'
  " Comments as text objects
  Plug 'glts/vim-textobj-comment'
  " Entire buffer as a text object
  Plug 'kana/vim-textobj-entire'
  " Function definitions themselves as text objects
  Plug 'kana/vim-textobj-function'
  " Current line as a text object
  Plug 'kana/vim-textobj-line'
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
  " Automatically align based on an anchor character
  Plug 'junegunn/vim-easy-align'
  " Automagically correct common errors
  Plug 'tpope/vim-abolish'

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

" Syntax
  " General syntax groups
  Plug 'sheerun/vim-polyglot'
  " Java
  Plug 'BrandonBurrus/java-syntax.vim'
  " TypeScript
  Plug 'Quramy/tsuquyomi'
  Plug 'peitalin/vim-jsx-typescript'
  " Elm
  Plug 'elmcast/elm-vim'
  " Swift
  Plug 'jph00/swift-apple'
  " Python Jupyter
  Plug 'jupyter-vim/jupyter-vim'

" Git
  " Add git hunk signs to left gutter
  Plug 'airblade/vim-gitgutter'
  " Git commands
  Plug 'tpope/vim-fugitive'
  " Extend vim-fugitive with github integration
  Plug 'tpope/vim-rhubarb'
  " Add additional commands to commit and rebase buffers
  Plug 'tpope/vim-git'
  " Browse git branches/tags with fzf
  Plug 'stsewd/fzf-checkout.vim'
  " Auto set the current working dir to the dir containing the .git dir
  Plug 'airblade/vim-rooter'

" Misc
  " Interact with databases via cmds
  Plug 'tpope/vim-dadbod'
  " Display marks in the left gutter
  Plug 'kshenoy/vim-signature'
  " Automatic tag management
  Plug 'ludovicchabant/vim-gutentags'
  " Traverse undo history visually
  Plug 'mbbill/undotree'
  " Auto-save and manage sessions
  Plug 'tpope/vim-obsession'
  " gC to toggle caps lock
  Plug 'tpope/vim-capslock'
  " Support .editorconfig config files
  Plug 'editorconfig/editorconfig-vim'
  " Create pretty code screenshot from selection
  Plug 'kristijanhusak/vim-carbon-now-sh'
  " Icons :D
  Plug 'ryanoasis/vim-devicons'

call plug#end()

