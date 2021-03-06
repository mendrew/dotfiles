
" http://learnvimscriptthehardway.stevelosh.com/chapters/01.html

"============== Plugins ===================
source ~/.vim/startup/plugins.vim
" Specific plugins settings in:
" ~/.vim/after/plugin/

"============== Filetype stuff ============
filetype plugin on
filetype indent on

"============== Load custom settings ======
source ~/.vim/startup/color.vim
source ~/.vim/startup/commands.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

" Syntax-specific settings
source ~/.vim/startup/js.vim
source ~/.vim/startup/php.vim
source ~/.vim/startup/vim.vim
source ~/.vim/startup/yaml.vim
source ~/.vim/startup/html.vim

