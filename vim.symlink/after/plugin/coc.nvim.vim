" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" useful for vim docs
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Trigger coc autocomplete using omnifunc keys
inoremap <silent><expr> <c-n> coc#refresh()
inoremap <silent><expr> <c-p> coc#refresh()

" Formatting selected code.
xnoremap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>f  <Plug>(coc-format-selected)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Cursor disappears after go to definition or reference
" the only fix exists
let g:coc_disable_transparent_cursor = 1

nmap <silent> [g <Plug>(coc-diagnostic-next)
nmap <silent> ]g <Plug>(coc-diagnostic-prev)
