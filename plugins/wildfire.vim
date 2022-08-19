" Github: https://github.com/gcmt/wildfire.vim
" This selects the next closest text object.
" map <SPACE> <Plug>(wildfire-fuel)

" This selects the previous closest text object.
" vmap <C-SPACE> <Plug>(wildfire-water)

map <ENTER> <Plug>(wildfire-fuel)
let g:wildfire_objects = {
    \ "*" : ["i'", 'i"', "i)", "i]", "i}","i>"]
\ }

" cal wildfire#triggers#Add("<space>", {
"     \ "html,xml" : ["at", "it"],
" \ })

nmap <leader>s <Plug>(wildfire-quick-select)

