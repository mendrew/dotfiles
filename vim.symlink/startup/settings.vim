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

" Disable auto restoring of <EOL> at the end of file if missing.
set nofixendofline

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

autocmd Filetype php setlocal noexpandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype smarty setlocal noexpandtab shiftwidth=2 softtabstop=2 tabstop=2

set enc=utf-8
set fillchars=vert:¦

set linespace=0
set history=1000
set listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬

if has('linebreak')
  let &showbreak='↳ ' " DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
endif

" if exists('+colorcolumn')
"   " Highlight up to 255 columns (this is the current Vim max) beyond 'textwidth'
"   let &l:colorcolumn='+' . join(range(0, 254), ',+')
" endif
" set textwidth=80

if has('windows')
  set splitbelow                      " open horizontal splits below current window
endif

if has('vertsplit')
  set splitright                      " open vertical splits to the right of the current window
endif

" set spell checking
set spell

set laststatus=2
set vb t_vb=

" For russian keyboard
" set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" help webpack with file watching mechanism
set backupcopy=yes

set nobackup
set nowritebackup
set noswapfile

if exists('$SUDO_USER')
  set nobackup                        " don't create root-owned files
  set nowritebackup                   " don't create root-owned files
else
  set backupdir=~/.vim/tmp/backup    " keep backup files out of the way
  set backupdir+=.

  " vim won't create folder automatically for you
  if !isdirectory($HOME . "/.vim/tmp/backup")
    call mkdir($HOME . "/.vim/tmp/backup", "p", 0700)
  endif
endif

if exists('$SUDO_USER')
  set noswapfile                      " don't create root-owned files
else
  set directory=~/.vim/tmp/swap//    " keep swap files out of the way
  set directory+=.

  " vim won't create folder automatically for you
  if !isdirectory($HOME . "/.vim/tmp/swap")
    call mkdir($HOME . "/.vim/tmp/swap", "p", 0700)
  endif
endif

set swapsync=  " let OS sync swapfiles lazily
set updatecount=80   " update swapfiles every 80 typed chars
set updatetime=2000  " same as YCM

if has('persistent_undo')
  if exists('$SUDO_USER')
    set noundofile                    " don't create root-owned files
  else
    set undodir=~/local/.vim/tmp/undo
    set undodir+=~/.vim/tmp/undo      " keep undo files out of the way
    set undodir+=.
    set undofile                      " actually use undo files

    " vim won't create folder automatically for you
    if !isdirectory($HOME . "/.vim/tmp/undo")
      call mkdir($HOME . "/.vim/tmp/undo", "p", 0700)
    endif
  endif
endif

if has('viminfo')
  if exists('$SUDO_USER')
    set viminfo=                      " don't create root-owned files
  else
    if isdirectory('~/local/.vim/tmp')
      set viminfo+=n~/local/.vim/tmp/viminfo
    else
      set viminfo+=n~/.vim/tmp/viminfo " override ~/.viminfo default
    endif

    if !empty(glob('~/.vim/tmp/viminfo'))
      if !filereadable(expand('~/.vim/tmp/viminfo'))
        echoerr 'warning: ~/.vim/tmp/viminfo exists but is not readable'
      endif
    endif
  endif
endif

if has('mksession')
  if isdirectory('~/local/.vim/tmp')
    set viewdir=~/local/.vim/tmp/view
  else
    set viewdir=~/.vim/tmp/view       " override ~/.vim/view default
  endif
  set viewoptions=cursor,folds        " save/restore just these (with `:{mk,load}view`)
endif

" " enable hardtime to break habits like jjjj, kkkk
" let g:hardtime_default_on = 1


" Speed up Syntax Highlighting
" Edit
" Share

" The defaults for syncing in some syntaxes for vim can be very slow, especially for large files and slow machines.
" augroup syntaxHight
"   autocmd!
"   autocmd BufWinEnter,Syntax * syn sync minlines=200 maxlines=200
" augroup END

" autocmd BufWritePost * :call SyncUploadFile()
" autocmd BufReadPre * :call SyncDownloadFile()
