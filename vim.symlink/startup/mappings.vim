" Leader key
let mapleader=','

" Exit from insert mode easy way
inoremap jk <esc>

" Editing vimrc mapping
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Enable vimrc changes on fly
nnoremap <leader>sv :source $MYVIMRC<cr>

" Open non-existen file under cursor by gf
map <leader>gf :e <cfile><cr>
map <leader><C-w>f :vsplit <cfile><cr>
map <leader><C-w>gf :split <cfile><cr>

" Abbreviation example
iabbrev tehn then
iabbrev waht what

" Auto-center in view
nmap G Gzz
map n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Delete/Insert inside comma
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l "delete argument
nmap ca, f,ld2F,i,<ESC>a "delete arg and insert

" Regexp default to very magic
no / /\v

" Unmap the arrow keys
" no <down> ddp
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
" no <up> ddkP
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
