let g:pymode = 1
let g:pymode_indent = 1
let g:pymode_folding = 1
set foldlevelstart=1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
" Add breakpoint with <leader>b
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_doc = 1
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
" Automatically check python code
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'pep257', 'mccabe']
let g:pymode_lint_sort = ['E', 'C', 'I']
let g:pymode_lint_ignore = "E266,C901"
let g:pymode_motion = 1
" Fix PEP8 errors in current buffer automatically
nmap <Leader>a :PymodeLintAuto<CR>
" FIXE Disable rope: in fresh installation could be return segfault
let g:pymode_rope = 0
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
" Rope - rename with <C-c>rr
let g:pymode_rope_rename_bind = '<C-c>rr'
" Rope - organize imports with <C-c>ro
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
" Rope - autoimport with <C-c>ra
let g:pymode_rope_autoimport_bind = '<C-c>ra'
" Remap toggle folding: use zz instead za
nnoremap zz za

