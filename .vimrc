""
"" Basic Setup
""
set history=1000        " Increase the history size
set number              " Show line numbers
syntax enable           " Turn on syntax highlighting
set ruler               " Show line and column number
set showmode
set showcmd

"load ftplugins and indent files
filetype plugin on
filetype indent on

"""
""" Searching
"""
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

"""
""" Whitespace
"""
set expandtab                     " use spaces, not tabs
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set backspace=indent,eol,start    " backspace through everything in insert mode
set nowrap                        " don't wrap lines

set listchars=tab:>-
set list

"""
""" Backup and swap files
"""
set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

"""
""" Status Line
"""
if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r
  set statusline+=Line:%l/%L[%p%%]
  set statusline+=Col:%v
  set statusline+=Buf:#%n
  set statusline+=[%b][0x%B]
endif

"""
""" Folding
"""
set foldcolumn=2

"""
""" Personal Customizations
"""
let mapleader=","
let maplocalleader="\\"
colorscheme Tomorrow-Night-Eighties

"" Easier window nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" Move lines up and down
noremap - ddp
noremap = ddkP

"" Easy edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

let g:NERDCompactSexyComs = 1

" Grep for word under cursor
nnoremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Create an Ag command
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Easy toggles
nnoremap <leader>N :setlocal number!<cr>
nnoremap <leader>w :setlocal wrap!<cr>
nnoremap <leader>p :setlocal paste!<cr>
nnoremap <leader>a :setlocal autoindent!<cr>

nnoremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0
"function! QuickfixToggle()
  "if g:quickfix_is_open
    "cclose
    "let g:quickfix_is_open = 0
    "execute g:quickfix_return_to_window . "wincmd w"
  "else
    "let g:quickfix_return_to_window = winnr()
    "copen
    "let g:quickfix_is_open = 1
  "endif
"endfunction
function! QuickfixToggle()
  for i in range(1, winnr('$'))
    let bnum = winbufnr(i)
    if getbufvar(bnum, '&buftype') == 'quickfix'
      cclose
      return
    endif
  endfor

  copen
endfunction

"""
""" Plugins
"""

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'https://github.com/w0rp/ale.git'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'raimondi/delimitmate'

Plug 'https://github.com/AndrewRadev/splitjoin.vim.git'
Plug 'https://github.com/edkolev/tmuxline.vim.git'
Plug 'https://github.com/jeetsukumaran/vim-buffergator.git'
"Plug 'https://github.com/pangloss/vim-javascript'
"Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/bronson/vim-trailing-whitespace'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/ervandew/supertab'

Plug 'dhruvasagar/vim-table-mode'

call plug#end()

" fzf config
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"" Activate pathogen
" execute pathogen#infect()

"" Settings for syntastic
"let g:syntastic_enable_signs=1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 2
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_debug = 3
"let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

"function! StrTrim(txt)
  "return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
"endfunction
"let b:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))

" ALE settings
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_javascript_eslint_use_local_config = 1
let g:ale_fixers = {'javascript': ['prettier']}
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fix_on_save = 1


nmap <leader>ew :lopen<CR>      " open location window
nmap <leader>ec :lclose<CR>     " close location window
nmap <leader>ee :ll<CR>         " go to current error/warning
nmap <leader>en :lnext<CR>      " next error/warning
nmap <leader>ep :lprev<CR>      " previous error/warning


"" Settings for NERDTree
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 50

"" JSX in .js files
let g:jsx_ext_required = 0

"" Table Settings
map <leader>t :TableModeToggle<CR>
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

