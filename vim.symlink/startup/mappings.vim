" Leader key
let mapleader="\<space>"
let maplocalleader=','
" Exit from insert mode easy way
inoremap jk <esc>

" Editing vimrc mapping
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Enable vimrc changes on fly
nnoremap <leader>sv :source $MYVIMRC<cr>

" <Leader>p -- Show the path of the current file (mnemonic: path; useful when
" you have a lot of splits and the status line gets truncated).
nnoremap <Leader>p :echo expand('%')<CR>

" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>

nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :quit<CR>

" Abbreviation example
iabbrev tehn then
iabbrev waht what
iabbrev @@ andr.medv.spb@gmail.com

" Auto-center in view
nnoremap G Gzz
noremap n nzz
noremap N Nzz
noremap } }zz
noremap { {zz

" Split mapping
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Visual mode mappings.
xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l
" Tabs mapping
nnoremap <S-H> gT
nnoremap <S-L> gt
xnoremap <S-H> gT
xnoremap <S-L> gt

" Unmap the arrow keys
" no <down> ddp
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
noremap <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Prevent unnoing K mapping
nnoremap K <nop>

" Set working directory to the current file
" could be done by 'set autochdir' or 'autocmd BufEnter * silent! lcd %:p:h'
" but it could break plugins work
nnoremap <LocalLeader>cd :lcd %:p:h<CR>:pwd<CR>
