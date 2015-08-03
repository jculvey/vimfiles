" Activate pathogen
execute pathogen#infect()

" Increase the history size
set history=1000

" Show line numbers
set number

set showmode
set showcmd

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

"load ftplugins and indent files
filetype plugin on
filetype indent on

" turn syntax detection on
syntax on

" Make , the leader key
let mapleader=","

" Settings for syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=2

" Settings for NERDTree
map <leader>n :NERDTreeToggle<CR>

colorscheme Tomorrow-Night-Eighties

" Set case insensitivity when doing incremental search
set ignorecase
set smartcase
