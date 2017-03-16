" ctrlP plugin settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
if executable("ag")
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

" set max results
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:70'

" use cache
if !exists('$SUDO_USER')
  let g:ctrlp_use_caching = 1
  let g:ctrlp_clear_cache_on_exit = 0
  let g:ctrlp_cache_dir = $HOME.'/.vim/tmp/backup'
endif
