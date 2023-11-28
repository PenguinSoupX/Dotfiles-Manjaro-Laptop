" This block of code checks for the presence of vim-plug, downloads it if not found,
" and sets up an autocommand to install plugins and source the vimrc on Vim startup.
" Check if the vim-plug script is not present in the autoload directory
" Download vim-plug using curl if not already present
" Automatically install plugins and source the vimrc after Vim starts

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Begin Vim-Plug section
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes

" Example Vim-Plug Configuration in vimrc
" -----------------------------------------------------------------------------
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" Loads 'preservim/nerdtree' only when NERDTreeToggle is executed

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Installs 'rdnetto/YCM-Generator' from the 'stable' branch

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
" Installs 'fatih/vim-go' with the latest tag

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Installs 'nsf/gocode' with specific tag and runtime path set to 'vim'

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Installs 'junegunn/fzf' in a custom directory and runs a post-update hook

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" Specifies a local plugin directory for a manually managed plugin

" -----------------------------------------------------------------------------

" Vim adaptation of the famous Afterglow theme from Sublime Text 2/3.
" To enable it, simply add colorscheme afterglow (not vim-afterglow) to your ~/.vimrc after having installed the plugin (manually or by using a package manager).
Plug 'danilo-augusto/vim-afterglow'

" End Vim-Plug section
call plug#end()

" Vim-Plug Commands
" -----------------------------------------------------------------------------
" PlugInstall [name ...] [#threads] : Install plugins
"   Installs the specified plugins or all plugins if no names are provided.
"   #threads can be used to specify the number of parallel threads for installation.

" PlugUpdate [name ...] [#threads] : Install or update plugins
"   Updates the specified plugins or all plugins if no names are provided.
"   #threads can be used to specify the number of parallel threads for updating.

" PlugClean[!] : Remove unlisted plugins
"   Removes plugins that are not listed in your Vim-Plug configuration.
"   The bang version (!) will clean without prompting for confirmation.

" PlugUpgrade : Upgrade vim-plug itself
"   Updates the Vim-Plug plugin manager to the latest version.

" PlugStatus : Check the status of plugins
"   Displays information about installed plugins, including their status.

" PlugDiff : Examine changes from the previous update and the pending changes
"   Shows a diff of changes between the previous update and the pending changes.

" PlugSnapshot[!] [output path] : Generate script for restoring the current snapshot
"   Creates a script that can be used to restore the current state of plugins.
"   The bang version (!) will overwrite the existing snapshot without prompting.
"   The output path is optional and specifies where to save the snapshot script.

" -----------------------------------------------------------------------------

" Colorscheme
colorscheme afterglow

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

