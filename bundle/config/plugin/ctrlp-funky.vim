let g:ctrlp_funky_matchtype = 'path'
" the |syntax-highlighting| feature is enabled for the
" CtrlP-buffer
let g:ctrlp_funky_syntax_highlight = 1
" Funky searches function defs from all buffers
let g:ctrlp_funky_multi_buffers = 1
" This allows you to switch to no-limit mode. By default, the funky buffer is
" not scrollable = limit mode
let g:ctrlp_funky_nolim = 1
" The most recently used function definition appears at the top of
" the list.
let g:ctrlp_funky_sort_by_mru = 1
" Shortcut
nnoremap <c-f> :CtrlPFunky<Cr>
