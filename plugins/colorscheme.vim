" Vim Script
" theme configuration
" Example config in VimScript
let g:tokyonight_style = "storm"  " use 'storm' 'night' 'day'
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'blue',
  \ 'error': '#ff0000',
  \ 'border': 'blue',
  \ 'bg_float': '#066b73'
\ }

" OneDark
lua << EOF
-- Lua
require('onedark').setup  {
    -- Main options --
    style = 'light', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
EOF
" colorscheme onedark

" **fox scheme
lua << EOF
-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},
  palettes = {
              \ duskfox = {
          \ bg0 = "#066b73",
        \ }
        \ }
})
EOF

" Nightfox theme
lua << EOF
-- require("nightfox").setup({
-- palettes = {
--     -- Custom duskfox with black background
--     duskfox = {
--         bg1 = "#000000", -- Black background
--         bg0 = "#1d1d2b", -- Alt backgrounds (floats, statusline, ...)
--         bg3 = "#121820", -- 55% darkened from stock
--         sel0 = "#131b24", -- 55% darkened from stock
--         },
--     },
-- specs = {
--     all = {
--         inactive = "bg0", -- Default value for other styles
--         },
--     duskfox = {
--         inactive = "#090909", -- Slightly lighter then black background
--         },
--     },
-- groups = {
--     all = {
--         NormalNC = { fg = "fg1", bg = "inactive" }, -- Non-current windows
--         },
--     },
-- })
EOF

colorscheme duskfox

" Load the colorscheme
" colorscheme tokyonight

" Vim-gitgutter
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
