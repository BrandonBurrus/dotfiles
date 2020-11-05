" Brandon Burrus .gvimrc

so ~/.vimrc

colorscheme neonchalk

set macligatures

" Font
if has ('gui_running')
  set guifont=DankMono_Nerd_Font:h16
endif

let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_startify = 1

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
