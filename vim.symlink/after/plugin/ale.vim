" let g:ale_linters = {'python': ['flake8'], 'javascript': ['prettier', 'eslint']}

" let g:ale_python_flake8_executable = $VIRTUAL_ENV . '/bin/flake8'
" let g:ale_lint_delay = 1000

" nmap <F8> <Plug>(ale_fix)
let g:ale_fix_on_save = 1

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript.tsx': ['eslint', 'stylelint'],
\}
" let g:ale_linters_explicit = 1
