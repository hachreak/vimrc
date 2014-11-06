" Open nerdtree if first argument is a directory.
" Es: vim ~/
if isdirectory(argv(0))
  bd
  autocmd vimenter * exe "cd" argv(0)
  autocmd VimEnter * NERDTree
endif
" NERDTree Ignore
let NERDTreeIgnore=['\.pyc']
" toggle nerdtree using nt
nmap nt :NERDTreeToggle<CR>
