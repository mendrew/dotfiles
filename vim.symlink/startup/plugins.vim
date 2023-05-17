" Plugin settings with switch statement to play with that in different patforms

" set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/bundle')

" Command-t installation fails in MacOS. This is the custom version of it for
" my computer. Based on this discussion: https://github.com/wincent/command-t/issues/341#issuecomment-522216390
let g:commandt_install = 'cd ruby/command-t/ext/command-t; make clean; /usr/local/opt/ruby/bin/ruby extconf.rb; make; make install;'
Plug 'wincent/command-t', { 'tag': '5.0.5' ,'do': g:commandt_install }

" search with :Ack
Plug 'wincent/ferret'

" for regexp in magic mode
Plug 'wincent/loupe'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired' " ]q is :cnext.
Plug 'tpope/vim-repeat' " control "." command to repeate recent more specific plugin commands
Plug 'tpope/vim-surround' " dealing with pairs of quotes, brackets x>3 => ( x>3 )
Plug 'tpope/vim-vinegar' " overrides netrw interface to make it less informative
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-abolish'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" support undo commands
Plug 'sjl/gundo.vim'

" language specific

"
" for git
Plug 'tpope/vim-fugitive', {'name': 'fugitive'}
Plug 'tpope/vim-rhubarb'

" colors
Plug 'altercation/vim-colors-solarized'

" Ruskey
Plug 'powerman/vim-plugin-ruscmd'

" CodeStyle per project
Plug 'editorconfig/editorconfig-vim'

if has('nvim')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
endif

" All of your Plugins must be added before the following line
call plug#end()            " required

filetype plugin indent on    " required
