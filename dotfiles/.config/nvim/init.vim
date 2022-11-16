set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
" set clipboard=unnamedplus   " use system clipboard
filetype plugin on
set cursorline
set ttyfast
set spell
set backupdir=~/.cache/nvim " Directory to store backup files

set spelllang=de_de,en_us,cjk
set spellsuggest=best,9
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O> :set spell!<cr>

call plug#begin("~/.vim/plugged")
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', {'do': ':UpdateReportPlugins'}
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'lervag/vimtex'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

let g:deoplete#enable_at_startup = 1

set t_Co=256
set background=light
colorscheme PaperColor
set laststatus=2

set splitright
set splitbelow

