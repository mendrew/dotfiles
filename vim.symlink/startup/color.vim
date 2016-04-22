" Colocscheme for qnx and linux
if &term =~? 'qansi-m'
    colorscheme qnx6
else
    " colorscheme BusyBee_map
    set t_Co=256
    set term=screen-256color
    let g:solarized_termcolors=256
    colorscheme solarized
    set background=light
endif

" Color Settings
"color wombat256
"color xterm16
"color railscasts
"color molokai
"color skittles_dark
" color skittles_berry
