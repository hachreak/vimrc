" Ignore this files when press <c-p>
set wildignore+=tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" Set where search:
"   'c' - the directory of the current file.
"   'r' - the nearest ancestor that contains one of these directories or
"         files: .git .hg .svn .bzr _darcs.
"   'a' - like c, but only if the current working directory outside of CtrlP
"         is not a direct ancestor of the directory of the current file.
"   0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'
" Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
let g:ctrlp_cmd = 'CtrlPMixed'
" Specify an external tool to use for listing files instead of using Vim's
" globpath(). Use %s in place of the target directory.
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }
" The maximum number of files to scan, set to 0 for no limit.
 let g:ctrlp_max_files = 10000
" The maximum depth of a directory tree to recurse into.
let g:ctrlp_max_depth = 100
