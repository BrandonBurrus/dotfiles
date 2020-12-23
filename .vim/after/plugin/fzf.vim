" FZF configuration
let g:fzf_buffers_jump   = 1
let g:fzf_tags_command   = 'ctags -R --exclude=.git --exclude=log'
let g:fzf_layout         = { 'window': { 'width': 0.9, 'height': 0.8 } }
let g:fzf_preview_window = ['right:60%', 'ctrl-p']
let $FZF_DEFAULT_OPTS    = '--layout=reverse --border=sharp --cycle --tabstop=2'
