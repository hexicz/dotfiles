set enc=utf-8
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" =============== Vundle Initialization ===============
so ~/.vim/vundles.vim

" Enable per project .vimrc
set exrc
set secure

" ================ General Config ====================
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on
filetype plugin indent on

" Change leader to a comma because the backslash is too far away
let mapleader=","

" ================ turn off swap files ==============
set noswapfile
set nobackup
set nowb

" ================ Indentation ======================
set autoindent " set auto indent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab " use spaces, not tab characters

" ================ Search Settings  =================
set incsearch       " Find the next match as we type the search
set hlsearch        " Hilight searches by default
set viminfo='100,f1 " Save up to 100 marks, enable capital marks
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*/node_modules/*
set wildignore+=*.keep
set wildignore+=*/.git/*,*/.hg/*

" ================ Scrolling ========================
set scrolloff=8                   " start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set noshowmatch                   " don't jump between matching brackets
set matchtime=3                   " match bracket blink time (in 1/10s)
set mouse=a                       " enable mouse support

" =============== Appearance ===============
" Display tabs and trailing spaces visually
set list
set list listchars=tab:»·,trail:·,eol:¬,extends:❯,precedes:❮
map <Leader>nl :set nolist<CR>
map <Leader>sl :set list<CR>

set nowrap       " Don't wrap lines
set linebreak    " Wrap lines at convenient points

so ~/.vim/appearance.vim

" =============== Settings ===============
so ~/.vim/settings.vim

" At the bottom of file
au BufNewFile,BufRead *.coffee set filetype=coffee
