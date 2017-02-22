set nocompatible
set hidden
let mapleader=","

nmap <silent> <leader>ev :e ~/.vimrc<CR>
nmap <silent> <leader>es :so ~/.vimrc<CR>
nmap <silent> ,/ :let @/=""<CR> " clearing search highlighting
nmap <C-S> :w<CR>
nmap <F5> <Esc>:cclose<CR>:w<CR>:make! \| cwindow<CR>
nmap <F2> :set paste<CR>
nmap <F3> :set nopaste<CR>

"Moving between wraped lines
nnoremap j gj
nnoremap k gk

"Disabling arrrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>
noremap <left> <nop>

try
"set t_Co=256
colorscheme mustang
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=dark
"
"Pathogen
call pathogen#infect()
"Taglist
let Tlist_Inc_Winwidth = 0
nmap <F9> :TlistToggle<CR>

"NERDTree
nmap <leader>n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap <leader>N :NERDTreeClose<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1   
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
catch
endtry

syntax on
filetype on
filetype plugin indent on
"filetype indent on
"set scrolloff=1 "number of lines to be always visible below/above caret

set laststatus=2
set wrapscan
set number
set autoindent
if has("autocmd")
	autocmd FileType vim setl shiftwidth=4 tabstop=4 
	autocmd FileType ruby setl shiftwidth=2 tabstop=2 expandtab
	autocmd FileType ruby setl makeprg=ruby\ %:p
	autocmd FileType c setl shiftwidth=4 tabstop=4 
	autocmd FileType c let &makeprg = 'if [[ -f Makefile ]]; then make;else cc -Wall -g ' . expand("%") . ' -o ' . expand("%:r") . ';fi'
	autocmd Filetype c nmap <F8> <ESC>:!%:p:r<CR>
	autocmd Filetype python setl tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
endif
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



"Because <F1>-<F4> behaves super crazy 
"set <F4>=[14~
"
