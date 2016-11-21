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
""" Personal Customizations
"""
let mapleader=","
colorscheme Tomorrow-Night-Eighties

"""
""" Plugins
"""

"" Activate pathogen
execute pathogen#infect()

"" Settings for syntastic
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_debug = 3

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let b:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))

"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
"nnoremap <silent> <leader>s :SyntasticCheck<CR>

"" Settings for NERDTree
map <leader>n :NERDTreeToggle<CR>

"" Settings for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Disable annoying autocomplete plugin
let g:omni_sql_no_default_maps = 1

