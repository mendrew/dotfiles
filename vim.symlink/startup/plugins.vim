" Plugin settings with switch statement to play with that in different patforms

" set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'wincent/command-t'

" search with :Ack
Plugin 'wincent/ferret'

" for regexp in magic mode
Plugin 'wincent/loupe'

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired' " ]q is :cnext.
Plugin 'tpope/vim-repeat' " control "." command to repeate recent more specific plugin commands
Plugin 'tpope/vim-surround' " dealing with pairs of quotes, brackets x>3 => ( x>3 )
Plugin 'tpope/vim-vinegar' " overrides netrw interface to make it less informative

Plugin 'w0rp/ale' " async linter

" support undo commands
Plugin 'sjl/gundo.vim'

" support tags
" Plugin 'majutsushi/tagbar'
" Plugin 'xolox/vim-easytags'
" Plugin 'xolox/vim-misc'

" snippets support
" Plugin 'Shougo/neocomplete'
" Plugin 'Shougo/neosnippet'
" Plugin 'Shougo/neosnippet-snippets'
" Plugin 'honza/vim-snippets'

" language specific
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

Plugin 'othree/html5.vim'

Plugin 'cakebaker/scss-syntax.vim'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'moll/vim-node'
Plugin 'jparise/vim-graphql'

"
" for git
Plugin 'tpope/vim-fugitive', {'name': 'fugitive'}
Plugin 'tpope/vim-rhubarb'

" for mercurial
" Plugin 'ludovicchabant/vim-lawrencium'

" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
"
" colors
Plugin 'altercation/vim-colors-solarized'

" System modifications
" Plugin 'wincent/terminus'

" Ruskey
Plugin 'powerman/vim-plugin-ruscmd'

" Break habbits
" Plugin 'takac/vim-hardtime'
" Plugin 'wikitopian/hardmode'

" CodeStyle per project
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'prettier/vim-prettier'


" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
