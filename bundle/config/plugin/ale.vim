" Abilita ALE
let g:ale_enabled = 1

" Linting sempre attivo
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

" UI minimale ma utile
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'

" Messaggi in statusline (opzionale)
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Navigazione errori
nmap <silent> <leader>dn <Plug>(ale_next_wrap)
nmap <silent> <leader>dp <Plug>(ale_previous_wrap)

let g:ale_completion_enabled = 1

" TODO need to install pyslp
function! CondaPylsp()
  if exists('$CONDA_PREFIX')
    return $CONDA_PREFIX . '/bin/pylsp'
  endif
  return 'pylsp'
endfunction

let g:ale_python_pylsp_executable = CondaPylsp()

let g:ale_linters = {
\ 'python': ['pylsp'],
\}

highlight ALEWarning guifg=#d8a657 ctermbg=NONE
highlight ALEError guifg=#fb4934 ctermbg=NONE

autocmd FileType python setlocal omnifunc=ale#completion#OmniFunc

" autocomplete with <C-space>
inoremap <Nul> <C-x><C-o>
" popup piu' pulito
set completeopt=menuone,noinsert,noselect

" TODO need to install isort, black
" command -> :ALEFix
let g:ale_fixers = {
\ 'python': ['isort', 'black'],
\}
