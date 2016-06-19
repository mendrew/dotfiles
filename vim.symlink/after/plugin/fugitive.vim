" The tree buffer makes it easy to drill down through the directories of your git repository,
" but it’s not obvious how you could go up a level to the parent directory.
" Running the following command will open the parent tree:
" :edit %:h
"
" If you want, you could create a mapping to make this easier.
" Here’s an example, which maps .. to the above command,
" but only for buffers containing a git blob or tree:
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif


" Auto-clean fugitive buffers
"
" Each time you open a git object using fugitive it creates a new buffer.
" This means that your buffer listing can quickly become swamped with fugitive buffers.
"
" Here’s an autocommand that prevents this from becomming an issue:

autocmd BufReadPost fugitive://* set bufhidden=delete