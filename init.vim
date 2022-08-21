let g:python3_host_prog = '/usr/bin/python3.9'
let g:loaded_perl_provider = 0

"      general settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

filetype on
filetype plugin on
filetype indent on
"  color
set termguicolors
" colors ron
" hi Pmenu ctermfg=7 ctermbg=236
" hi Pmenusel ctermfg=white ctermbg=32
" hi CocFloating ctermfg=black ctermbg=240

set mouse=nv
set number
set ignorecase "命令模式忽略大小写
set showcmd "在输入命令时，在屏幕底部显示出部分命令
set wildmenu "增强模式中的命令行自动完成操作
set showmode "在屏幕底部显示当前所处的模式
set cmdheight=1 "设置命令行高度为1行
set laststatus=2 "启动显示状态行(1),总是显示状态行(2)
set cursorline "突出显示当前行
set virtualedit=block,onemore
set ruler "打开状态栏标尺
set history=100
set whichwrap+=<,>,h,l "允许backspace和光标键跨越行边界(不建议)

    ""code style
set autoindent "表示自动缩进
set cindent "设置使用C/C++语言自动缩进方式
set cinoptions=g0,:N-s,(0 "设置C/C++语言的具体缩进方式
set smartindent "根据文件中其他地方的缩进空格个数来确定一个tab是多少个空格
set expandtab "将tab扩展成空格
set timeoutlen=500
set tabstop=4 "tab为4个空格，默认是8个空格
set shiftwidth=4 "每一级缩进是4个空格
set softtabstop=4 "表示在编辑模式的时候按退格键的时候退回缩进的长度
set scrolloff=8
    ""code complete
"set completeopt-=preview "打开文件类型检测, 加了这句才可以用智能补全
set completeopt=preview,menu "打开文件类型检测, 加了这句才可以用智能补全

    ""search configuration
set hlsearch
set incsearch

    ""buffer
set noswapfile
set autoread "设置当文件被改动时自动载入
set autowrite "自动保存
set confirm "在处理未保存或只读文件的时候，弹出确认

    ""utf
set termencoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" ctags
"""""""""""""""""""""""""""""""""""
set tags=tags;
set autochdir

"	vim-plug 
""""""""""""""""""""""""""""""""
call plug#begin()

"""""""""""coc.nvim"""""""""""""
" Use release branch (recommend)
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'

""""""""""lightline && bufferline""""""""""""
Plug 'itchyny/lightline.vim'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

"""""""""""vim-surround"""""""""""""
""成对增加、替换、删除
Plug 'tpope/vim-surround'

"""""""""""""vim-repeat"""""""""""""
Plug 'tpope/vim-repeat'

"""""""""""vim-wildfire"""""""""""""
""回车选择区域块
Plug 'gcmt/wildfire.vim'

"""""""""""vim-fugitive"""""""""""""
""display git branch in statusline
Plug 'tpope/vim-fugitive'

"""""""""""nerdcommenter"""""""""""""
""注释工具
" Plug 'preservim/nerdcommenter'
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

"""""""""""vim-visual-multi"""""""""""""
""多光标操作
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"""""""""""vim-floaterm"""""""""""""
" terminal manager
Plug 'voldikss/vim-floaterm'

"""""""""""vim-which-key""""""""""""
" keymapping helper
Plug 'liuchengxu/vim-which-key'

"""""""""""color solution"""""""""""
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" beautiful indent blankline
Plug 'lukas-reineke/indent-blankline.nvim'

" highlight cocconfig
Plug 'kevinoid/vim-jsonc'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-media-files.nvim'

call plug#end()

"	modularization
""""""""""""""""""""""""""""""""
function! Dot(path)
    return "~/.config/nvim/" . a:path
endfunction
for file in split(glob(Dot('plugins/**.vim')),'\n')
    exe 'source' file
endfor

