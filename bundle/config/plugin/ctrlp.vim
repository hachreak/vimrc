" Ignore this files when press <c-p>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" Set where search:
"   'c' - the directory of the current file.
"   'r' - the nearest ancestor that contains one of these directories or
"         files: .git .hg .svn .bzr _darcs.
"   'a' - like c, but only if the current working directory outside of CtrlP
"         is not a direct ancestor of the directory of the current file.
"   0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'c'
" Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
let g:ctrlp_cmd = 'CtrlPMixed'
