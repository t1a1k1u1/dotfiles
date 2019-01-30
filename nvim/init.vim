" ====================
" dein
" ====================
if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml('~/.config/nvim/dein.toml',      {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" ====================
" color scheme
" ====================
set background=dark
colorscheme hybrid

" ====================
" light line
" ====================
set noshowmode

" ====================
" deoplete.nvim
" ====================
" let g:deoplete#enable_at_startup = 1

" ====================
" Unit.vim
" ====================
let g:unite_enable_start_insert=1
nnoremap <silent> ,b :Unite buffer<CR>
nnoremap <silent> ,u :Unite file_mru buffer<CR>

" ====================
" NERDTree
" ====================
let g:NERDTreeShowBookmarks=1
map <C-n> :NERDTreeToggle<CR>

" ====================
" common
" ====================
set showcmd
set number
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

nnoremap tn gt
nnoremap tp gT
nnoremap tj <C-w>j
nnoremap tk <C-w>k
nnoremap tl <C-w>l
nnoremap th <C-w>h
nnoremap tJ <C-w>J
nnoremap tK <C-w>K
nnoremap tL <C-w>L
nnoremap tH <C-w>H
nnoremap tv :vsplit<CR>

nnoremap @t :tabe<CR>:terminal<CR>
tnoremap <Esc> <C-\><C-n>
