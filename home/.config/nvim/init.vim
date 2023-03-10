set number
set tabstop=4
set ruler
syntax on

call plug#begin()
" colorschemes:
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'

" syntax:
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'aliva/vim-fish'
Plug 'bfrg/vim-cpp-modern'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" other:
Plug 'gko/vim-coloresque'
call plug#end()

colorscheme nord
