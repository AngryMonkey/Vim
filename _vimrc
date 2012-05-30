"""""""""""""""""""""
"=> General
"""""""""""""""""""""
set nocompatible
set autochdir

"Set how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Display number
set nu!
" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore =*.o,*.~,*.pyc

" Always show current position
set ruler

" Height of the command bar 
set cmdheight=2

" A buffer becomes hidden when it is abandoned 
set hid

" Configure backspace so it acts as it should act
set backspace =eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executiong macros (good performance config)
set lazyredraw

" For regular expressions turn magic on 
set magic

" Show matching brackets when texe indicator is over them 
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
au BufRead,BufNewFile *.txt setlocal ft=txt
"""""""""""
"=> Colors and Fonts
"""""""""""
" Enable syntax highlighting
syntax enable

colorscheme blue
set background=dark

set guifont=Monaco:h10

" Set extra options when running in GUI mode
if has("gui_running")
    winpos 20 20
    set lines=30 columns=120
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" Set encodings
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

" 解决consle 输出乱码 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
language messages zh_CN.utf-8
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


" Ctrl + H            将光标移到当前行的行首
imap <c-h> <ESC>I

" Ctrl + J            将光标移到下一行的行首
imap <c-j> <ESC>jI

" Ctrl + K            将光标移到上一行的末尾
imap <c-k> <ESC>kA

" Ctrl + L            将光标移到当前行的行尾
imap <c-l> <ESC>A

