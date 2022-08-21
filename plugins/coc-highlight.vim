" To enable highlight current symbol on CursorHold, add:
autocmd CursorHold * silent call CocActionAsync('highlight')

" highlight cocconfig json
autocmd BufRead,BufNewFile *.mycjson set filetype=jsonc

