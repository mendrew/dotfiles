syntax on
" numbers
set number
set relativenumber
set cursorline

" Search options
set gdefault                " Add the g flag to search/replace by default
set hlsearch                " Highlight search results
set ignorecase              " Ignore case in search patterns
set smartcase               " Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch               " While typing a search command, show where the pattern
nnoremap <silent> <cr> :nohlsearch<cr><cr>

" Maximum column in which to search for syntax items.  I
set synmaxcol=250
set cmdheight=1
" set nowrap
" try to wrap too long line like optimization line
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3
set sidescrolloff=3 " same for horizontally scrolling

" For diff mode
if &diff
    set wrap
endif

" for change buffers even if they have changes
set hidden

" Tab and space settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set enc=utf-8
set fillchars=vert:¦

set linespace=0
set history=1000
set listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬

set laststatus=2
set vb t_vb=

" For russian keyboard
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

set nobackup
set nowritebackup
set noswapfile

if exists('$SUDO_USER')
  set nobackup                        " don't create root-owned files
  set nowritebackup                   " don't create root-owned files
else
  set backupdir=~/.vim/tmp/backup    " keep backup files out of the way
  set backupdir+=.
endif

if exists('$SUDO_USER')
  set noswapfile                      " don't create root-owned files
else
  set directory=~/.vim/tmp/swap//    " keep swap files out of the way
  set directory+=.
endif

if has('persistent_undo')
  if exists('$SUDO_USER')
    set noundofile                    " don't create root-owned files
  else
    set undodir=~/local/.vim/tmp/undo
    set undodir+=~/.vim/tmp/undo      " keep undo files out of the way
    set undodir+=.
    set undofile                      " actually use undo files
  endif
endif
