" In your init.lua or init.vim
lua << EOF
require("bufferline").setup{}
EOF

" the tab page labels will be displayed always
set showtabline=2

"set tab labels to show at most 12 characters
set guitablabel=%-0.12t%M
" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <slient><space>bn :BufferLineCycleNext<CR>
nnoremap <silent><space>bp :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><space>bf :BufferLineMoveNext<CR>
nnoremap <silent><space>bb :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent><space>bse :BufferLineSortByExtension<CR>
nnoremap <silent><space>bsd :BufferLineSortByDirectory<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

