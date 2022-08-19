nnoremap <silent> <space>  :<c-u>WhichKey '<space>'<CR>
vnoremap <silent> <space>  :<c-u>WhichKeyVisual '<space>'<CR>
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>
" Define prefix dictionary
let g:leader_key_map ={}
let g:space_key_map = {}
" hi link WhichKeyFloating Search
"
" hide statusline
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
""""""""""""""""""""""""space_mapping_start"""""""""""""""""""""""""""""
let g:space_key_map.b = {
        \ 'name': 'bufferline...',
        \ 'n': 'go next buffer',
        \ 'p': 'go previous buffer',
        \ 'f': 'move buffer forwards',
        \ 'b': 'move buffer backwards',
        \ 's': {
             \ 'name': 'Soft buffers',
             \ 'e': 'soft by extension',
             \ 'd': 'soft by directory',
          \ },
      \ }

let g:space_key_map.c = {
        \ 'name': 'commenter...',
        \ 'c': 'normal comment',
        \ 'a': 'insert new comment line',
        \ 's': 'pretty block comment',
        \ 'u': 'uncomments',
      \ }

let g:space_key_map.e = {
        \ 'name': 'explorer...',
        \ 'f': 'Open floating',
        \ 'l': 'List explorer preset',
        \ 't': 'Looks like nerdtree',
        \ }

let g:space_key_map.l = {
        \ 'name': 'coclist...',
        \ 'm': 'coc-marketplace',
        \ 'e': 'coc-extensions',
      \ }

let g:space_key_map.s = {
        \ 'name': 'split window...',
        \ 'h': 'horizontal split',
        \ 'v': 'vertical split',
      \ }

let g:space_key_map.t = {
        \ 'name': 'translator...',
        \ 't': 'mapping',
        \ 'e': 'echo',
      \ }

let g:space_key_map.o = {
        \ 'name': 'open somting...',
        \ 't': 'Terminal floating',
        \ }
"""""""""""""""""""""""""space_mapping_end"""""""""""""""""""""""""""""


""""""""""""""""""""""leader_mapping_start"""""""""""""""""""""""""""""
let g:leader_key_map.c = {
        \ 'name': 'Commenter',
        \ 'c': 'Comment',
        \ 'u': 'Uncomment',
        \ '<SPC>': 'Comment',
      \ }
let g:leader_key_map.l = {
        \ 'name': 'CocList',
        \ 'e': 'extensions',
        \ 'm': 'marketplace',
      \ }
""""""""""""""""""""""""leader_mapping_end"""""""""""""""""""""""""""""
call which_key#register('<space>', "g:space_key_map")
call which_key#register(',', "g:leader_key_map")

