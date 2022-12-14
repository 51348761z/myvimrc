lua << EOF

for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
  -- config.install_info.url = config.install_info.url:gsub("https://github.com/", "https://hub.fastgit.xyz/")
  config.install_info.url = config.install_info.url:gsub("https://github.com/", "git@github.com/")
end

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed =  "all" ,
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    -- Automatically install missing parsers when entering buffer
    auto_install = true,
    -- List of parsers to ignore installing (for "all")
    ignore_install = { "" },
    highlight = {
        -- `false` will disable the whole extension
        enable = true,
        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        disable = { "" },
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = true,
        },
    -- indentation key: '='
    require'nvim-treesitter.configs'.setup {
        indent = {
            enable = false
            },
        },
    context_commentstring = {
        enable = false
        }
}
EOF

" folding KEY: 'zo','zc' 
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" disable auto folding
set foldlevel=90
