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
Plug 'mileszs/ack.vim'

call plug#end()

let g:airline_theme='onedark'
colorscheme onedark

map <C-n> :NERDTreeToggle<CR>

set relativenumber
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸—
set list
set shiftwidth=2
set tabstop=2
set laststatus=2
set cindent
set lazyredraw
set ttyfast
set autoindent
set shell=/bin/bash
set ignorecase

set autoread
au CursorHold * checktime

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

imap jj <Esc>

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\'

" :DiffSaved command to diff between buffer and filesystem
function! s:DiffWithSaved()
	let filetype=&ft
	diffthis
	vnew | r # | normal! 1Gdd
	diffthis
	exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" Remove trailing whitespace with F5
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

