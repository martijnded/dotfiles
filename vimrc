set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" Setup
set encoding=utf-8
set guifont=Hasklig:h14



" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" 256 colours please
set t_Co=256
" Solarized colour scheme...
colorscheme solarized
" ...with a dark background
set background=light
" Italicised comments and attributes
highlight Comment cterm=italic
highlight htmlArg cterm=italic



" CtrlP
let g:ctrlp_working_path_mode = 'a'
set wildignore+=*/node_modules/*,*/bower_components/*



" Disable indentLine by default
let g:indentLine_enabled = 0



" Set relevant filetypes
"au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.hbs set filetype=html



" Buffer management

" Open splits to the right or below; more natural than the default
set splitright
set splitbelow
" Set the working directory to wherever the open file lives (can be problematic)
" set autochdir
" set path+=**
" Show file options above the command line
set wildmenu
" Don't offer to open certain files
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd



" Text management

filetype plugin indent on
" 2 spaces please
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Round indent to nearest multiple of 4
set shiftround
" No line-wrapping
set nowrap
" Spell-check always on
" set spell
" Underscores denote words
set iskeyword-=_
" No extra spaces when joining lines
set nojoinspaces
" Interpret numbers with leading zeroes as decimal, not octal
set nrformats=
" Auto-format comments
set formatoptions+=roq



" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
" Don't redraw the screen unless we need to
set lazyredraw



" Visual decorations

" Show status line
set laststatus=2
" Show what mode you're currently in
set showmode
" Show what commands you're typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
" Show invisibles
" set list
" set listchars=tab:ª-,trail:∑
" Set relative line numbers...
set relativenumber
" ...but absolute numbers on the current line (hybrid numbering)
set number
" Force the cursor onto a new line after 80 characters
" set textwidth=80
" However, in Git commit messages, let's make it 72 characters
" autocmd FileType gitcommit set textwidth=72
" Colour the 81st (or 73rd) column so that we donøt type over our limit
" set colorcolumn=+1
" Highlight current line
set cursorline



" Search

" Don't keep results highlighted after searching...
set nohlsearch
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase



" Key mappings

" jj to throw you into normal mode from insert mode
inoremap jj <esc>
" jk to throw you into normal mode from insert mode
inoremap jk <esc>
