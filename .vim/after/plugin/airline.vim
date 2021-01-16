" Airline configuration
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#coc#error_symbol   = 'E:'
let g:airline#extensions#coc#warning_symbol = 'W:'

let g:airline#extensions#csv#enabled         = 0
let g:airline#extensions#searchcount#enabled = 0
let g:airline#extensions#searchcount#enabled = 0
let g:airline#extensions#wordcount#enabled   = 0

let g:airline#extensions#tabline#enabled       = 1
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#formatter     = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep  = ''
let g:airline#extensions#tabline#left_sep      = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#right_sep     = ''

let g:airline_detect_paste     = 0
let g:airline_detect_crypt     = 0
let g:airline_detect_spell     = 0
let g:airline_detect_spelllang = 0

let g:airline_theme           = 'minimalist'
let g:airline_powerline_fonts = 1

function! AirlineInit() abort
  let g:airline_section_a = airline#section#create([''])
  let g:airline_section_b = airline#section#create(['mode'])
  let g:airline_section_c = airline#section#create(['branch'])
  " let g:airline_section_x = airline#section#create([])
  let g:airline_section_y = airline#section#create([])
  let g:airline_section_z = airline#section#create(['%{strftime("%I:%M %p")}'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

let g:airline_left_sep          = ''
let g:airline_left_alt_sep      = ''
let g:airline_right_sep         = ''
let g:airline_right_alt_sep     = ''
let g:airline_symbols.branch    = ''
let g:airline_symbols.dirty     = ' '
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
