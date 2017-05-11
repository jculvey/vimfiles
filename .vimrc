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
"filetype plugin on
"filetype indent on
"
""""
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
""" Personal Customizations
"""
let mapleader=","
colorscheme Tomorrow-Night-Eighties

"""
""" Plugins
"""

"" Activate pathogen
execute pathogen#infect()


