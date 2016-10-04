scriptencoding utf-8
set encoding=utf-8

filetype plugin indent on
syntax enable

" Vim-Plug plugins
call plug#begin()

Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'

call plug#end()

let g:airline_theme='onedark'
colorscheme onedark

map <C-n> :NERDTreeToggle<CR>

set number
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸—
set list
set shiftwidth=2
set tabstop=2
set laststatus=2
set autoread
set autoindent
set cindent

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\'
