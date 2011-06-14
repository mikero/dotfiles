call pathogen#runtime_append_all_bundles()

set nocompatible                  " Must come first because it changes other options.

syntax enable                     " Turn on syntax highlighting.
set background=dark
set t_Co=256 " 256 colors
let g:solarized_termtrans=1
color solarized
" colorscheme vividchalk
" colorscheme ir_black
" colorscheme topfunky-light
" colorscheme grb256

filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set history=1000

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set numberwidth=5
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" clear the search buffer when hitting return (grb)
:nnoremap <CR> :nohlsearch<cr>    

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
" set smartindent
set laststatus=2
set showmatch
set incsearch

set cmdheight=2

let mapleader=','

" bind control-l to hashrocket
imap <C-l> <Space>=><Space>


