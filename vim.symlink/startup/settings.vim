syntax on
set number
set relativenumber
set cursorline

" While typing a search command, show where the pattern, as it was typed so far, matches. The matched string is highlighted. If the pattern
set incsearch
set synmaxcol=0
set cmdheight=2
set nowrap
set nowritebackup

" For diff mode
if &diff
    set wrap
endif

" Tab and space settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set enc=utf-8
set fillchars=vert:¦

set linespace=0
set history=1000
set listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬

set laststatus=2
set vb t_vb=

if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

" For russian keyboard
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
