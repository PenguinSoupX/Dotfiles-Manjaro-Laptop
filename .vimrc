" Colorscheme
"colorscheme gruvbox

" Miscellaneous settings
syntax enable         " Enable syntax highlighting
set ruler                  " Show the ruler for line and column information
set wrap                  " Enable line wrapping
set mouse=a          " Enable mouse support
set showcmd           " Show partial commands in the last line of the screen
set laststatus=2      " Always display the status line

" Line numbers
"set number                               " Display line numbers
"set relativenumber                  " Enable relative line numbers
set number relativenumber    " Display line numbers and enable relative line numbers

" Search settings
set incsearch        " Incremental search (search as you type)
set hlsearch         " Highlight search results
set ignorecase       " Ignore case when searching
set smartcase        " Override ignorecase if the pattern has uppercase characters

" Use 4 spaces for tabs
set tabstop=4         " Number of spaces that a <Tab> character in the file counts for
set shiftwidth=4      " Number of spaces to use for each step of (auto)indent
set expandtab         " Expand <Tab> to spaces

" Enable clipboard support for copying/pasting with the system clipboard
set clipboard=unnamedplus

" Enable auto-indentation
set autoindent

" Enable spell checking
set spell

" Auto-close brackets, quotes, etc.
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

