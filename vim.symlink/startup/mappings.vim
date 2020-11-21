" Leader key
let mapleader="\<space>"
let maplocalleader=','
" Exit from insert mode easy way
inoremap jk <esc>

" Disable Ex mode which needs :visual to get back
:nnoremap Q <Nop>
" Prevent unnoing K mapping
nnoremap K <nop>

" Editing vimrc mapping
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Enable vimrc changes on fly
nnoremap <leader>sv :source $MYVIMRC<cr>

" <Leader>p -- Show the path of the current file (mnemonic: path; useful when
" you have a lot of splits and the status line gets truncated).
nnoremap <Leader>p :echo expand('%')<CR>

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
