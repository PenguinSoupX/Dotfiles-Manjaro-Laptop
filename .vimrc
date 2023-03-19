" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Use 4 spaces for tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Enable mouse support
set mouse=a

" Show command line and status line
set showcmd
set laststatus=2

" Search settings
set incsearch
set ignorecase
set smartcase

" Plugin settings
call plug#begin()
Plug 'tpope/vim-sensible'              " Sensible defaults
Plug 'tpope/vim-fugitive'              " Git integration
Plug 'airblade/vim-gitgutter'          " Git diff indicators
Plug 'vim-airline/vim-airline'         " Status line
Plug 'vim-airline/vim-airline-themes'  " Status line themes
Plug 'scrooloose/nerdtree'             " File explorer
Plug 'tpope/vim-surround'              " Surround text manipulation
Plug 'preservim/nerdcommenter'         " Commenting
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " Fuzzy finder
Plug 'junegunn/fzf.vim'                " Fuzzy finder integration
Plug 'tpope/vim-repeat'                " Repeat commands with .
call plug#end()

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'

" FZF settings
set rtp+=~/.fzf
set shell=/bin/zsh
set wildignore+=*.swp
set wildignore+=*/tmp/*
set wildignore+=*.o
set wildignore+=*.obj
let g:fzf_layout = { 'down': '~40%' }

" Map leader key to spacebar
let mapleader = "\<Space>"

" Custom mappings
nmap <Leader>f :FZF<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>c :Commentary<CR>
nnoremap <Leader>r :Gread<CR>
nnoremap <Leader>w :w!<CR>

" Colorscheme
colorscheme gruvbox

