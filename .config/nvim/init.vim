 " General settings
set number                " show line numbers
set relativenumber        " show relative line numbers
set cursorline            " highlight current line
set tabstop=4             " set the number of spaces for a tab character
set shiftwidth=4          " set the number of spaces for auto-indentation
set expandtab             " insert spaces instead of tabs
set incsearch             " highlight incremental search matches
set hlsearch              " highlight search matches
set ignorecase            " ignore case when searching
set smartcase             " use case-sensitive search if pattern contains an uppercase character
set laststatus=2          " always show status line, even if there is only one window

" Plugin settings
call plug#begin()         " start defining plugins
Plug 'tpope/vim-fugitive' " add the vim-fugitive plugin
Plug 'jiangmiao/auto-pairs' " add the auto-pairs plugin
Plug 'vim-airline/vim-airline' " add the vim-airline plugin
Plug 'scrooloose/nerdtree' " add the NERDTree plugin
Plug 'preservim/nerdcommenter' " add the nerdcommenter plugin
call plug#end()           " finish defining plugins

" Mapping
nnoremap <C-n> :NERDTreeToggle<CR> " map Ctrl+n to toggle NERDTree
nnoremap <leader>cc <plug>NERDCommenterToggle " map <leader>cc to toggle nerdcommenter
nnoremap <leader>cs :source ~/.config/nvim/init.vim<CR> " map <leader>cs to reload the configuration file

" Color scheme
syntax on                 " enable syntax highlighting
colorscheme gruvbox       " set the color scheme to gruvbox

" Auto pairs
let g:AutoPairsMapCh = 0  " disable auto-closing when typing inside of pairs
let g:AutoPairsShortcutToggle = '<C-e>' " toggle the auto-pairs plugin with Ctrl+e
let g:AutoPairsShortcutFastWrap = '<M-e>' " quickly wrap selected text with Alt+e
let g:AutoPairsShortcutJump = '<C-j>' " quickly jump outside of pairs with Ctrl+j
let g:AutoPairsMatchParenOff = 1 " disable matching parentheses

" Airline
let g:airline_powerline_fonts = 1 " use powerline fonts for airline
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline extension
let g:airline#extensions#tabline#buffer_nr_show = 1 " show buffer number in airline tabline
let g:airline#extensions#tabline#buffer_nr_format = '%n' " set the buffer number format
let g:airline#extensions#tabline#show_buffers = 1 " show all buffers in airline tabline

" Fugitive
nnoremap <leader>gs :Git<CR> " map <leader>gs to run Git
nnoremap <leader>gd :Gdiff<CR> " map <leader>gd to open Git diff

" NerdTree
let g:NERDTreeShowHidden=1 " show hidden files in NERDTree
let g:NERDTreeMinimalUI=1 " use minimal UI for NERDTree

" Autocompletion
set completeopt=menuone,noinsert,noselect " configure the completion menu
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>'] " navigate down in completion

