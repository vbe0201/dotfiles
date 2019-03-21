" Vundle stuff
set nocompatible
filetype off

" Set the runtime path to include and initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Load plugin manager
Plugin 'VundleVim/Vundle.vim'

" Automatically close brackets
Plugin 'jiangmiao/auto-pairs'

" EditorConfig
Plugin 'editorconfig/editorconfig-vim'

" Allow plugins to define their own operator
Plugin 'kana/vim-operator-user'

" clang-format plugin
Plugin 'rhysd/vim-clang-format'

" Bazel support
Plugin 'bazelbuild/vim-bazel'

" CMake support
Plugin 'vhdirk/vim-cmake'

" Color theme
Plugin 'tomasiser/vim-code-dark'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" File tree
Plugin 'scrooloose/nerdtree'

" Auto completer
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" Needs adjustment on DOS, e.g. change / to \\

" Ignore JS/TS/Web Stack files
set wildignore+=*/node_modules/*

" Ignore C/C++ object files
set wildignore+=*.o,*.obj,*.out,*.elf,*.exe,*.app

" Ignore C#.NET files
set wildignore+=*.Cache,*/bin/*,*/tmp/*,*/obj/*

" Ignore Python files
set wildignore+=*/__pycache__/*,*.pyc

" Auto indentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Disable swap file
set noswapfile

" Enable line numbers
set number

" Disable line wrapping
set nowrap

" Make backspace behave like in other editors
set backspace=indent,eol,start

" Other options
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set cmdheight=2
set wildmenu
set langmenu=en
set magic
set showmode
set incsearch
set ruler
set hid
set whichwrap+=<,>,h,1
set mouse=a
set numberwidth=6
set encoding=utf-8

" Set the color scheme
colorscheme codedark
set cursorline

" Access the system clipboard (on DOS, it's 'unnamed' without 'plus')
set clipboard=unnamedplus

" Enable relative line numbering
set rnu

" Store an undo buffer in a file in $HOME/.vimundo
set undofile
set undodir=$HOME/.vimundo
set undolevels=1000
set undoreload=10000

" Unbind Ex mode
noremap Q <nop>

" Unbind help menues
noremap <F1> <nop>
noremap <S-k> <nop>

" Remove delay when pressing O
set timeout ttimeoutlen=100

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map F6 to spellchecking
map <F6> :setlocal spell! spelllang=en_us<CR>

" Hard Mode
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" God Mode
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Enable autoformat on save
autocmd FileType c,cpp ClangFormatAutoEnable

" Open file tree
map <C-n> :NERDTreeToggle<CR>

" Disable Terminal bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Ctrl-Backspace to delete last word
imap <C-BS> <C-W>
