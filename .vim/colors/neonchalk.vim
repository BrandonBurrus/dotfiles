" Color schemed based on Jellybeans.vim
" https://github.com/nanotech/jellybeans.vim

let colors_name = "neonchalk"

if exists("syntax_on")
  syntax reset
endif

set background=dark
hi clear

if has("gui_running") || (has('termguicolors') && &termguicolors)
  let s:true_color = 1
else
  let s:true_color = 0
endif

if s:true_color || &t_Co >= 88
  let s:low_color = 0
else
  let s:low_color = 1
endif

let s:background_color = "1A1D20"
let s:termBlack = "Grey"
let s:overrides = {}

if &t_Co == 88
  " returns an approximate grey index for the given grey level
  fun! s:grey_number(x)
    if a:x < 23
      return 0
    elseif a:x < 69
      return 1
    elseif a:x < 103
      return 2
    elseif a:x < 127
      return 3
    elseif a:x < 150
      return 4
    elseif a:x < 173
      return 5
    elseif a:x < 196
      return 6
    elseif a:x < 219
      return 7
    elseif a:x < 243
      return 8
    else
      return 9
    endif
  endfun

  " returns the actual grey level represented by the grey index
  fun! s:grey_level(n)
    if a:n == 0
      return 0
    elseif a:n == 1
      return 46
    elseif a:n == 2
      return 92
    elseif a:n == 3
      return 115
    elseif a:n == 4
      return 139
    elseif a:n == 5
      return 162
    elseif a:n == 6
      return 185
    elseif a:n == 7
      return 208
    elseif a:n == 8
      return 231
    else
      return 255
    endif
  endfun

  " returns the palette index for the given grey index
  fun! s:grey_color(n)
    if a:n == 0
      return 16
    elseif a:n == 9
      return 79
    else
      return 79 + a:n
    endif
  endfun

  " returns an approximate color index for the given color level
  fun! s:rgb_number(x)
    if a:x < 69
      return 0
    elseif a:x < 172
      return 1
    elseif a:x < 230
      return 2
    else
      return 3
    endif
  endfun

  " returns the actual color level for the given color index
  fun! s:rgb_level(n)
    if a:n == 0
      return 0
    elseif a:n == 1
      return 139
    elseif a:n == 2
      return 205
    else
      return 255
    endif
  endfun

  " returns the palette index for the given R/G/B color indices
  fun! s:rgb_color(x, y, z)
    return 16 + (a:x * 16) + (a:y * 4) + a:z
  endfun

else " assuming &t_Co == 256

  " returns an approximate grey index for the given grey level
  fun! s:grey_number(x)
    if a:x < 14
      return 0
    else
      let l:n = (a:x - 8) / 10
      let l:m = (a:x - 8) % 10
      if l:m < 5
        return l:n
      else
        return l:n + 1
      endif
    endif
  endfun

  " returns the actual grey level represented by the grey index
  fun! s:grey_level(n)
    if a:n == 0
      return 0
    else
      return 8 + (a:n * 10)
    endif
  endfun

  " returns the palette index for the given grey index
  fun! s:grey_color(n)
    if a:n == 0
      return 16
    elseif a:n == 25
      return 231
    else
      return 231 + a:n
    endif
  endfun

  " returns an approximate color index for the given color level
  fun! s:rgb_number(x)
    if a:x < 75
      return 0
    else
      let l:n = (a:x - 55) / 40
      let l:m = (a:x - 55) % 40
      if l:m < 20
        return l:n
      else
        return l:n + 1
      endif
    endif
  endfun

  " returns the actual color level for the given color index
  fun! s:rgb_level(n)
    if a:n == 0
      return 0
    else
      return 55 + (a:n * 40)
    endif
  endfun

  " returns the palette index for the given R/G/B color indices
  fun! s:rgb_color(x, y, z)
    return 16 + (a:x * 36) + (a:y * 6) + a:z
  endfun

endif

" returns the palette index to approximate the given R/G/B color levels
fun! s:color(r, g, b)
  " map greys directly (see xterm's 256colres.pl)
  if &t_Co == 256 && a:r == a:g && a:g == a:b && a:r > 3 && a:r < 243
    return (a:r - 8) / 10 + 232
  endif

  " get the closest grey
  let l:gx = s:grey_number(a:r)
  let l:gy = s:grey_number(a:g)
  let l:gz = s:grey_number(a:b)

  " get the closest color
  let l:x = s:rgb_number(a:r)
  let l:y = s:rgb_number(a:g)
  let l:z = s:rgb_number(a:b)

  if l:gx == l:gy && l:gy == l:gz
    " there are two possibilities
    let l:dgr = s:grey_level(l:gx) - a:r
    let l:dgg = s:grey_level(l:gy) - a:g
    let l:dgb = s:grey_level(l:gz) - a:b
    let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
    let l:dr = s:rgb_level(l:gx) - a:r
    let l:dg = s:rgb_level(l:gy) - a:g
    let l:db = s:rgb_level(l:gz) - a:b
    let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
    if l:dgrey < l:drgb
      " use the grey
      return s:grey_color(l:gx)
    else
      " use the color
      return s:rgb_color(l:x, l:y, l:z)
    endif
  else
    " only one possibility
    return s:rgb_color(l:x, l:y, l:z)
  endif
endfun

fun! s:is_empty_or_none(str)
  return empty(a:str) || a:str ==? "NONE"
endfun

" returns the palette index to approximate the 'rrggbb' hex string
fun! s:rgb(rgb)
  if s:is_empty_or_none(a:rgb)
    return "NONE"
  endif
  let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
  let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
  let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0
  return s:color(l:r, l:g, l:b)
endfun

fun! s:prefix_highlight_value_with(prefix, color)
  if s:is_empty_or_none(a:color)
    return "NONE"
  else
    return a:prefix . a:color
  endif
endfun

fun! s:remove_italic_attr(attr)
  let l:attr = join(filter(split(a:attr, ","), "v:val !=? 'italic'"), ",")
  if empty(l:attr)
    let l:attr = "NONE"
  endif
  return l:attr
endfun

" sets the highlighting for the given group
fun! s:X(group, fg, bg, attr, lcfg, lcbg)
  if s:low_color
    let l:cmd = "hi ".a:group.
    \ " ctermfg=".s:prefix_highlight_value_with("", a:lcfg).
    \ " ctermbg=".s:prefix_highlight_value_with("", a:lcbg)
  else
    let l:cmd = "hi ".a:group.
    \ " guifg=".s:prefix_highlight_value_with("#", a:fg).
    \ " guibg=".s:prefix_highlight_value_with("#", a:bg)
    if !s:true_color
      let l:cmd = l:cmd.
      \ " ctermfg=".s:rgb(a:fg).
      \ " ctermbg=".s:rgb(a:bg)
    endif
  endif

  let l:attr = s:prefix_highlight_value_with("", a:attr)

  if exists("g:jellybeans_use_term_italics") && g:jellybeans_use_term_italics
    let l:cterm_attr = l:attr
  else
    let l:cterm_attr = s:remove_italic_attr(l:attr)
  endif

  if !exists("g:jellybeans_use_gui_italics") || g:jellybeans_use_gui_italics
    let l:gui_attr = l:attr
  else
    let l:gui_attr = s:remove_italic_attr(l:attr)
  endif

  let l:cmd = l:cmd." gui=".l:gui_attr." cterm=".l:cterm_attr
  exec l:cmd
endfun

set background=dark

call s:X("Normal","e8e8d3",s:background_color,"","White","")
call s:X("CursorLine","","1c1c1c","","",s:termBlack)
call s:X("CursorColumn","","1c1c1c","","",s:termBlack)
call s:X("TabLine","000000","b0b8c0","italic","",s:termBlack)
call s:X("TabLineFill","9098a0","","","",s:termBlack)
call s:X("TabLineSel","000000","f0f0f0","italic,bold",s:termBlack,"White")
call s:X("Pmenu","ffffff","606060","","White",s:termBlack)
call s:X("PmenuSel","101010","eeeeee","",s:termBlack,"White")
call s:X("Visual","","003562","","",s:termBlack)
call s:X("Search","4398C9","003562","underline","Magenta","")
call s:X("MatchParen","","","underline","Magenta","")
call s:X("Cursor",s:background_color,"bababa","","","")
call s:X("LineNr","3b3b40",s:background_color,"NONE",s:termBlack,"")
call s:X("CursorLineNr","ccc5c4","","","White","")
call s:X("Comment","41B645","","italic","Grey","")
call s:X("Todo","FF8C00","","bold","White",s:termBlack)
call s:X("StatusLine","","2f3236","","","White")
call s:X("StatusLineNC","","232a2f","","White","Black")
call s:X("VertSplit","232a2f","","",s:termBlack,s:termBlack)
call s:X("WildMenu","f0a0c0","302028","","Magenta","")
call s:X("Folded","a0a8b0","384048","italic",s:termBlack,"")
call s:X("FoldColumn","535D66","1f1f1f","","",s:termBlack)
call s:X("SignColumn","777777","333333","","",s:termBlack)
call s:X("Title","70b950","","bold","Green","")
call s:X("Special","da0caa","","italic","Green","")
call s:X("Statement","da0caa","","italic","DarkBlue","")
call s:X("Constant","7264ce","","","Red","")
call s:X("PreProc","cf6a4c","","","LightBlue","")
call s:X("Delimiter","dddddd","","","Grey","")
call s:X("String","e8212f","","","Green","")
call s:X("StringDelimiter","e8212f","","","DarkGreen","")
call s:X("Identifier","82cb4d","","","LightCyan","")
call s:X("Structure","8fbfdc","","","LightCyan","")
call s:X("Function","02a7ff","","","Yellow","")
call s:X("Type","ffb964","","","Yellow","")
call s:X("NonText","606060",s:background_color,"",s:termBlack,"")
call s:X("SpecialKey","444444","1c1c1c","",s:termBlack,"")
call s:X("Directory","dad085","","","Yellow","")
call s:X("ErrorMsg","","902020","","","DarkRed")
call s:X("Question","65C254","","","Green","")

hi! link Operator Structure
hi! link Conceal Operator
hi! link Error ErrorMsg
hi! link MoreMsg Special

" Startify
hi! link StartifyNumber Constant
hi! link StartifyPath Function

" Spell Checking
call s:X("SpellBad","","902020","underline","","DarkRed")
call s:X("SpellCap","","0000df","underline","","Blue")
call s:X("SpellRare","","540063","underline","","DarkMagenta")
call s:X("SpellLocal","","2D7067","underline","","Green")

" Diff
hi! link diffRemoved Constant
hi! link diffAdded String

" Vim
call s:X("DiffAdd","D2EBBE","437019","","White","DarkGreen")
call s:X("DiffDelete","40000A","700009","","DarkRed","DarkRed")
call s:X("DiffChange","","2B5B77","","White","DarkBlue")
call s:X("DiffText","8fbfdc","000000","reverse","Yellow","")
hi! link vimOption Identifier
hi! link vimGroup Identifier
hi! link vimSynType Identifier
hi! link vimIsCommand Function
hi! link vimUserFunc Function
hi! link vimEnvvar Identifier
hi! link vimAutoEvent Identifier


" PHP
call s:X("StorageClass","c59f6f","","","Red","")
hi! link phpFunctions Function
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator
hi! link phpOperator Normal
hi! link phpRelation Normal
hi! link phpVarSelector Identifier

" Python
hi! link pythonOperator Statement

" Ruby
call s:X("rubyInstanceVariable","c6b6fe","","","Cyan","")
call s:X("rubySymbol","7697d6","","","Blue","")
call s:X("rubyControl","7597c6","","","Blue","")
call s:X("rubyRegexpDelimiter","540063","","","Magenta","")
call s:X("rubyRegexp","dd0093","","","DarkMagenta","")
call s:X("rubyRegexpSpecial","a40073","","","Magenta","")
call s:X("rubyPredefinedIdentifier","de5577","","","Red","")
call s:X("rubyClass","447799","","","DarkBlue","")
call s:X("rubyIdentifier","c6b6fe","","","Cyan","")
hi! link rubySharpBang Comment
hi! link rubyConstant Type
hi! link rubyFunction Function
hi! link rubyGlobalVariable rubyInstanceVariable
hi! link rubyModule rubyClass
hi! link rubyString String
hi! link rubyStringDelimiter StringDelimiter
hi! link rubyInterpolationDelimiter Identifier

" Erlang
hi! link erlangAtom rubySymbol
hi! link erlangBIF rubyPredefinedIdentifier
hi! link erlangFunction rubyPredefinedIdentifier
hi! link erlangDirective Statement
hi! link erlangNode Identifier

" Elixir
hi! link elixirAtom rubySymbol

" JavaScript
hi! link javaScriptValue Constant
hi! link javaScriptRegexpString rubyRegexp
hi! link javaScriptTemplateVar StringDelim
hi! link javaScriptTemplateDelim Identifier
hi! link javaScriptTemplateString String
hi! link jsxAttrib Identifier
hi! link jsxTagName Function
hi! link jsxOpenPunct Delimiter
hi! link jsxClosePunct Delimiter
hi! link jsxCloseString Delimiter
hi! link jsxEqual Delimiter
hi! link jsxBraces Delimiter

" TypeScript
hi! link typescriptBraces Delimiter
hi! link typescriptVariable Statement
hi! link typescriptVariableDeclaration Identifier
hi! link typescriptIdentifierName Identifier

" Lua
hi! link luaOperator Conditional

" C
hi! link cFormat Identifier
hi! link cOperator Constant

" Objective-C/Cocoa
hi! link objcClass Type
hi! link cocoaClass objcClass
hi! link objcSubclass objcClass
hi! link objcSuperclass objcClass
hi! link objcDirective rubyClass
hi! link objcStatement Constant
hi! link cocoaFunction Function
hi! link objcMethodName Identifier
hi! link objcMethodArg Normal
hi! link objcMessageName Identifier

" Vimscript
hi! link vimOper Normal

" HTML
hi! link htmlTag Statement
hi! link htmlEndTag htmlTag
hi! link htmlTagName htmlTag

" XML
hi! link xmlTag Statement
hi! link xmlEndTag xmlTag
hi! link xmlTagName xmlTag
hi! link xmlEqual xmlTag
hi! link xmlEntity Special
hi! link xmlEntityPunct xmlEntity
hi! link xmlDocTypeDecl PreProc
hi! link xmlDocTypeKeyword PreProc
hi! link xmlProcessingDelim xmlAttrib

" Debugger.vim
call s:X("DbgCurrent","DEEBFE","345FA8","","White","DarkBlue")
call s:X("DbgBreakPt","","4F0037","","","DarkMagenta")
call s:X("PreciseJumpTarget","B9ED67","405026","","White","Green")
hi! link TagListFileName Directory

delf s:X
delf s:remove_italic_attr
delf s:prefix_highlight_value_with
delf s:rgb
delf s:is_empty_or_none
delf s:color
delf s:rgb_color
delf s:rgb_level
delf s:rgb_number
delf s:grey_color
delf s:grey_level
delf s:grey_number
