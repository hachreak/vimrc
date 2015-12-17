" use vim-dispatch to run Ack
let g:ack_use_dispatch = 1
" ignore .git .tags
let g:ackprg = "ack -s -H --nocolor --nogroup --column --ignore-dir=.git --ignore-dir=.cache --ignore-file=is:.tags --ignore-file=is:.bash_history --ignore-file=is:.viminfo"
" highlight results
let g:ackhighlight = 1
