
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

" Quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {<ESC>o}<ESC>O

" Replace string contents with recently copied text
nmap <Leader>r" "_di"P
nmap <Leader>c" "_di"Pa
nmap <Leader>r' '_di'P
nmap <Leader>c' '_di'Pa

" Word inside quote in normal mode
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Insert new line without insert mode after
nnoremap <C-o> o<esc>
nnoremap <C-O> O<esc>

" Auto-center in view
nmap G Gzz
map n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Tabs
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
noremap <F7> :set expandtab!<CR>
nmap <Leader>h :tabnew %:h<CR>

" Turn off search highlighting
nmap <C-n> :noh<CR>

" Delete/Insert inside comma
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l "delete argument 
nmap ca, f,ld2F,i,<ESC>a "delete arg and insert

" Delete surrounding characters
noremap ds{ F{xf}x
noremap cs{ F{xf}xi
noremap ds" F"x,x
noremap cs" F"x,xi
noremap ds' F'x,x
noremap cs' F'x,xi
noremap ds( F(xf)x
noremap cs( F(xf)xi
noremap ds) F(xf)x
noremap cs) F(xf)xi

" Detele till/before _
nmap cu ct_
nmap cU cf_

" Upper or lowercase the current word
nmap g^ gUiW
nmap gv guiW

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

let vim_markdown_preview_hotkey='<leader>m'
