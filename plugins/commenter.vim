" Github link: https://github.com/preservim/nerdcommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Comment out the current line or text selected in visual mode.
nnoremap <space>cc <plug>NERDCommenterComment
vnoremap <space>cc <plug>NERDCommenterComment
" Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
nnoremap <space>c<space> <plug>NERDCommenterToggle
vnoremap <space>c<space> <plug>NERDCommenterToggle
" Adds comment delimiters to the end of line and goes into insert mode between them.
nnoremap <space>ca <plug>NERDCommenterAppend
vnoremap <space>ca <plug>NERDCommenterAppend
" Comments out the selected lines with a pretty block formatted layout.
nnoremap <space>cs <plug>NERDCommenterSexy
vnoremap <space>cs <plug>NERDCommenterSexy
" Uncomments the selected line(s).
nnoremap <space>cu <plug>NERDCommenterUncomment
vnoremap <space>cu <plug>NERDCommenterUncomment
