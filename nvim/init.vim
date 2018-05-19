"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  let s:toml = '~/.config/nvim/dein.toml'
  call dein#load_toml(s:toml, {'lazy': 0})

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"deoplete---------------------------------
let g:deoplete#enable_at_startup = 1

"ale--------------------------------------
let g:ale_sign_column_always = 1

let g:ale_linters = {
\   'perl': ['perl', 'perlcritic'],
\}

let g:ale_perl_perl_executable = 'perl'
let g:ale_perl_perl_options = '-c -Mwarnings -Ilib'

"vim airline------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'angr'

"NERDTree---------------------------------
map <C-n> :NERDTreeToggle<CR>

"indentLine--------------------------------
let g:indentLine_char = '¦'

"common------------------------------------
set encoding=utf-8
set fileencoding=utf-8

set number
set clipboard=unnamed

set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4
set scrolloff=3

set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

set cursorline

colorscheme molokai
