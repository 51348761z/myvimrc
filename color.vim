" Vim Script
" theme configuration
" Example config in VimScript
let g:tokyonight_style = "storm"  " use 'storm' 'night' 'day'
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'blue',
  \ 'error': '#ff0000'
\ }

" Load the colorscheme
colorscheme tokyonight

