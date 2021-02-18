set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hidden
set guicursor=
set relativenumber
set nu
set noerrorbells
set smartcase
set ignorecase
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'chriskempson/base16-vim'
Plug 'whatyouhide/vim-gotham'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

colorscheme gotham

let mapleader = " "

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
