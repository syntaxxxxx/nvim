" dein configuration
"

let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1

let s:path = expand('$CACHE/dein')

if !dein#load_state(s:path)
  finish
endif

call dein#begin(s:path, expand('<sfile>'))

call dein#load_toml('~/.config/nvim/dein/normal.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/dein/lazy.toml', {'lazy': 1})

call dein#end()
call dein#save_state()

call dein#call_hook('source')
call dein#call_hook('post_source')
