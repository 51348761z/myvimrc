" Github: https://github.com/voldikss/vim-floaterm#options
nnoremap   <silent>   <space>ot    :FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>

tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" Configuration example
" Set floaterm window's background to #414868
hi Floaterm guibg=#414868
" Set floating window border line color to cyan, and background to #414868
hi FloatermBorder guibg=#414868 guifg=cyan

let g:floaterm_width = 0.9
let g:floaterm_height = 0.8
" 'top', 'bottom', 'left', 'right', 'topleft', 
" 'topright', 'bottomleft', 'bottomright', 'center', 
" 'auto'(at the cursor place). Default: 'center'
let g:floaterm_position = 'bottomright'

