set nocompatible
set hidden
let mapleader=","

nmap <silent> <leader>ev :e ~/.vimrc<CR>
nmap <silent> <leader>es :so ~/.vimrc<CR>
nmap <silent> ,/ :let @/=""<CR> " clearing search highlighting
nmap <C-S> :w<CR>
nmap <C-R> <Esc>:w<CR>:rubyf %:p<CR>
nmap <F2> :set paste<CR>
nmap <F3> :set nopaste<CR>

"Moving between wraped lines
nnoremap j gj
nnoremap k g

"Pathogen
call pathogen#infect()

set t_Co=256
"colorscheme mustang
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

"set scrolloff=1 "number of lines to be always visible below/above caret
set laststatus=2
set wrapscan
set number
set autoindent
set shiftwidth=2
set tabstop=2
set backspace=indent,eol,start
set showmatch
set ignorecase "no case sensetive search
set smartcase " ... unless expression is in caps
set smarttab
set hlsearch "highlighting search matches
set undolevels=1000
set history=1000
set title
set noincsearch
"set visualbell
"set noerrorbells
set nowrap

"Moving between open windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

syntax on
filetype on
filetype plugin on
filetype indent on

"NERDTree
nmap <leader>n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap <leader>N :NERDTreeClose<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1   
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
