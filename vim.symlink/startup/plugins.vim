" Plugin settings with switch statement to play with that in different patforms

" set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/bundle')

let g:commandt_install = 'cd ruby/command-t/ext/command-t; make clean; /usr/local/opt/ruby/bin/ruby extconf.rb; make; make install;'
Plug 'wincent/command-t', { 'do': g:commandt_install }

" search with :Ack
Plug 'wincent/ferret'

" for regexp in magic mode
Plug 'wincent/loupe'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired' " ]q is :cnext.
Plug 'tpope/vim-repeat' " control "." command to repeate recent more specific plugin commands
Plug 'tpope/vim-surround' " dealing with pairs of quotes, brackets x>3 => ( x>3 )
Plug 'tpope/vim-vinegar' " overrides netrw interface to make it less informative

Plug 'w0rp/ale' " async linter

" support undo commands
Plug 'sjl/gundo.vim'

" support tags
" Plug 'majutsushi/tagbar'
" Plug 'xolox/vim-easytags'
" Plug 'xolox/vim-misc'

" snippets support
" Plug 'Shougo/neocomplete'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'honza/vim-snippets'

" language specific
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'othree/html5.vim'

Plug 'cakebaker/scss-syntax.vim'
Plug 'gorodinskiy/vim-coloresque'
Plug 'moll/vim-node'
Plug 'jparise/vim-graphql'

"
" for git
Plug 'tpope/vim-fugitive', {'name': 'fugitive'}
Plug 'tpope/vim-rhubarb'

" for mercurial
" Plug 'ludovicchabant/vim-lawrencium'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
"
" colors
Plug 'altercation/vim-colors-solarized'

" System modifications
" Plug 'wincent/terminus'

" Ruskey
Plug 'powerman/vim-plugin-ruscmd'

" Break habbits
" Plug 'takac/vim-hardtime'
" Plug 'wikitopian/hardmode'

" CodeStyle per project
Plug 'editorconfig/editorconfig-vim'
" Plug 'prettier/vim-prettier'

" All of your Plugins must be added before the following line
call plug#end()            " required

filetype plugin indent on    " required
