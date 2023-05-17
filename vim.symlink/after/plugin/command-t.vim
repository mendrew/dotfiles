" If you have compile step issues in Mac OS you can take a look at this conversation
" https://github.com/wincent/command-t/issues/341#issuecomment-522216390

nmap <silent> <Leader>t <Plug>(CommandT)
nmap <silent> <Leader>b <Plug>(CommandTMRU)
nmap <silent> <Leader>n <Plug>(Command-T) ./node-modules

let g:CommandTFileScanner='git'

set wildignore+=*/dist/*
set wildignore+=*/node-modules/*
set wildignore+=*/android/*
set wildignore+=*/ios/*
set wildignore+=*/ios/*
let g:CommandTMaxCachedDirectories = 10
