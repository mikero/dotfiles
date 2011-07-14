call pathogen#runtime_append_all_bundles()

set nocompatible                  " Must come first because it changes other options.

syntax enable                     " Turn on syntax highlighting.
set background=dark
set t_Co=256 " 256 colors
let g:solarized_termtrans=1
color solarized
" colorscheme vividchalk
" colorscheme topfunky-light
" colorscheme ir_black
"colorscheme grb256

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
set directory=/tmp                " Keep swap files in one location

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{&ff}\ %=%-16(\ %l,%c-%v\ %)%P
:hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
" set smartindent
set showmatch
set incsearch

" set cursorline

set cmdheight=2

set showtabline=2

au BufRead,BufNewFile *.iphtml set filetype=perl

" map tab to control-n (autocomplete); second line overrides any plugins remapping the tab key
" inoremap <Tab> <C-n>
" au VimEnter * imap <Tab> <C-n>

" map control-l to hashrocket
imap <C-l> <Space>=><Space>

let mapleader=','

" run current file
map <leader>r :! ./%<cr>

" use tabular to align the equals operator
map <leader>= :Tab /=<cr>

" fast switching between files
map <leader>, <C-^>

" go to routes file
map <leader>gr :topleft :split config/routes.rb<cr>

" go to Gemfile
map <leader>gg :topleft 100 :split Gemfile<cr>

" toggle line numbering
map <leader>nn :set invnumber<CR>

" vertical and horizontal split and jump to new buffer
:noremap <leader>v :vsp^M^W^W<cr>
:noremap <leader>h :split^M^W^W<cr>

set shell=bash


