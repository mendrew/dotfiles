" If you have compile step issues in Mac OS you can take a look at this conversation
" https://github.com/wincent/command-t/issues/341#issuecomment-522216390
nmap <silent> <Leader>h <Plug>(CommandTHelp)
nmap <silent> <Leader>n <Plug>(CommandTHelp)
nmap <silent> <Leader>n <Plug>(Command-T) ./node-modules

" let g:CommandTSCMDirectories='.git,.hg,.svn,.bzr,_darcs,package.json'
"
set wildignore+=*/dist/*

