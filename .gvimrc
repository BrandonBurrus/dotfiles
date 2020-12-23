" Brandon Burrus .gvimrc

" Resource default vimrc
so ~/.vimrc

" Color Scheme
colorscheme neonchalk

if has('gui_running')
  " Font = Dank Mono
  set guifont=DankMono_Nerd_Font:h16
  " Enable font ligatures
  set macligatures
endif

" Reload dev icons plugin
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

" Remove MacVim menus (and related bindings)
try
  aunmenu File.Open\.\.\.
  aunmenu File.Close
  aunmenu File.Print
catch
endtry

