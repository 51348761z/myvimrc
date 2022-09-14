
"tab control
""""""""""""""""""""""""""""""""""
noremap <silent>tn :tabnew<CR>
noremap <silent>tq :tabclose<CR>
noremap <silent>te :tabn<CR>
noremap <silent>tu :tabp<CR>
" noremap <silent><leader>t :tabnew<CR>
" noremap <silent><leader>g :tabclose<CR>
noremap <silent><leader>1 :tabn 1<CR>
noremap <silent><leader>2 :tabn 2<CR>
noremap <silent><leader>3 :tabn 3<CR>
noremap <silent><leader>4 :tabn 4<CR>
noremap <silent><leader>5 :tabn 5<CR>
noremap <silent><leader>6 :tabn 6<CR>
noremap <silent><leader>7 :tabn 7<CR>
noremap <silent><s-tab> :tabnext<CR>
noremap <silent><s-tab> <ESC>:tabnext<CR>

"slipt window
""""""""""""""""""""""""""""""""""
nnoremap <silent><space>sh :split<CR>
nnoremap <silent><space>sv :vsplit<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Resize with arrow
""""""""""""""""""""""""""""""""""
noremap <silent><M-Up> :resize -2<CR>
noremap <silent><M-Down> :resize +2<CR>
noremap <silent><M-Left> :vertical resize -2<CR>
noremap <silent><M-Right> :vertical resize +2<CR>

" stay in indent mode
vnoremap < <gv
vnoremap > >gv

" move text up and down
vnoremap <silent><A-j> :m .+1<CR>==
vnoremap <silent><A-k> :m .-2<CR>==

" buffer control
""""""""""""""""""""""""""""""""""
noremap <silent><S-l> :bnext<CR>
noremap <silent><S-h> :bprevious<CR>
noremap <silent><space>bd :bdelete<CR>

" Vim-plug
noremap <silent><space>pi :PlugInstall<CR>

" coc-explorer
"""""""""""""""""""""""""""""
" Use preset argument to open it
nmap <space>et <Cmd>CocCommand explorer --preset simplify<CR>
nmap <space>ef <Cmd>CocCommand explorer --preset floating<CR>
" nmap <space>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
" nmap <space>eb <Cmd>CocCommand explorer --preset buffer<CR>

"List all presets
nmap <space>el <Cmd>CocList explPresets<CR>

" coc-translator
"""""""""""""""""""""""""""""""""""
" mapping
nmap <space>tt <Plug>(coc-translator-p)
vmap <space>tt <Plug>(coc-translator-pv)
" echo
nmap <space>te <Plug>(coc-translator-e)
vmap <space>te <Plug>(coc-translator-ev)
" replace
" nmap <space>tr <Plug>(coc-translator-r)
" vmap <space>tr <Plug>(coc-translator-rv)

" coc-marketplace
""""""""""""""""""""""""""""""""""""""
nmap <space>lm :CocList marketplace<CR>
nmap <space>le :CocList extensions<CR>


" ranger.vim
""""""""""""""""""""""""""""""""""""""
let g:ranger_map_keys = 0
map <space>ra :Ranger<CR>
