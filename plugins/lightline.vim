" Lighline configuration
"""""""""""""""""""""""""""""
if !has('gui_running')
  set t_Co=256
endif

set noshowmode

" let g:lightline = {
"       \ 'colorscheme': 'tokyonight',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch','readonly', 'filename', 'modified' ] ]
"       \     },
"       \ 'component_function': {
"       \   'gitbranch': 'FugitiveHead'
"       \     },
"       \ 'enable': {
"       \   'tabline': 0
"       \     }
"       \ }

" use coc-git configuration
" lightline
let g:lightline = {
  \ 'colorscheme': 'nightfox',
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'ctrlpmark', 'gitbranch', 'git', 'diagnostic', 'cocstatus', 'filename', 'method' ]
  \   ],
  \   'right':[
  \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
  \     [ 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \   'gitbranch': 'FugitiveHead',
  \   'git': 'LightlineGitStatus',
  \ },
  \  'enable':{
  \     'tabline': 0
  \ }
\ }

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

" function! LightlineGitStatus() abort
"   let git = get(g:, 'coc_git_status', '')
"   " return blame
"   return winwidth(0) > 120 ? git : ''
" endfunction

autocmd User CocGitStatusChange {command}
