:set number
:set tabstop=4
" :set relativenumber
:set termguicolors
:set cursorline
:syntax on
:syntax enable
:set background=dark

call plug#begin('~/.config/nvim/plugins')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'francoiscabrol/ranger.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'danilo-augusto/vim-afterglow'
Plug 'frazrepo/vim-rainbow'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ferrine/md-img-paste.vim'
Plug 'nikolvs/vim-sunbather'
Plug 'wadackel/vim-dogrun'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='fruit_punch'

let g:rainbow_active=1

colorscheme dogrun


" lua require 'plug-colorizer'

lua require 'colorizer'.setup()


autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'
"
let g:vim_markdown_folding_disabled = 1
