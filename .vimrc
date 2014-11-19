set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-surround'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'majutsushi/tagbar'
Bundle "daylerees/colour-schemes", { "rtp": "vim-themes/" }
Bundle "mattn/emmet-vim"
Bundle "altercation/vim-colors-solarized"

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

set autoindent
filetype plugin indent on
set tabstop=3
set shiftwidth=3

" Make Ruby indents spaces. It hurts, but it has to be done :(
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=1 tabstop=1 expandtab


" ----------------------------------------------------------------------------
" Remapping
" ----------------------------------------------------------------------------

" Change leader to something saner
let mapleader=","

" exit to normal mode with 'jj'
inoremap jj <ESC>

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Gundo Key
nnoremap <leader>u :GundoToggle<CR>

" NERDTree Key
nnoremap <leader>f :NERDTreeToggle<CR>

" Buffergator Key
nnoremap <leader>b :BuffergatorToggle<CR>

" Murder Help key
noremap <F1> <Nop>

" Relative Line Numbering Toggle Key
nnoremap <leader>r :exec &relativenumber == 1 ? "set number!" : "set relativenumber!"<CR>

" Tab stuff
noremap <leader>el :tabnext<CR>
noremap <leader>e<Right> :tabnext<CR>
noremap <leader>eh :tabprev<CR>
noremap <leader>e<Left> :tabprev<CR>
noremap <leader>en :tabnew<CR>

" Split stuff
nnoremap <leader>swh :topleft vnew<CR>
nnoremap <leader>swl :botright vnew<CR>
nnoremap <leader>swj :botright new<CR>
nnoremap <leader>swk :topleft new<CR>
nnoremap <leader>sh :leftabove vnew<CR>
nnoremap <leader>sl :rightbelow vnew<CR>
nnoremap <leader>sj :rightbelow new<CR>
nnoremap <leader>sk :leftabove new<CR>

" Get rid of the arrow keys, because I really need to learn Vim better
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Swap Ctrl+O and Ctrl+Q to make quick normal mode stuff easier
inoremap <c-o> <c-q>
inoremap <c-q> <c-o>
inoremap <c-w> <c-o><c-w>

" Make arrow keys n' shit wrap
set whichwrap+=<,>,h,l,[,]

" ----------------------------------------------------------------------------
" UI and Behavior
" ----------------------------------------------------------------------------

set ruler
set number
set scrolloff=3
set display=lastline
set laststatus=2
set showmatch
set mat=1
set showcmd
set undofile
set timeoutlen=2000
" set colorcolumn=80
" set background=light
colorscheme default 

" Disable audible bell, enable visual bell.
set visualbell

" Wrapping preeeeetty
set cpoptions+=n
let &showbreak = ' │ '

" Code Folding
set foldmethod=indent
set foldnestmax=5
set foldlevel=5

" Syntax Highlighting
syntax on
" 
" No Swaps4 files
set nobackup
set noswapfile " IMPORTANT: comment this line if you are working on a remote host
set wildignore=*.swp,*.bak,*.pyc,*.class

" Style indent guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
hi! link IndentGuidesOdd Normal
hi! link IndentGuidesEven LineNr

" Mouse Selection
set selectmode+=mouse
set mouse=a

" Change the separator character to use vertical bar instead of pipe
" set fillchars+=vert:│

" Hide scrollbars in GUI
set guioptions-=L
set guioptions-=r

" Set font for GUI
if has('gui_running')
        set guifont=M+\ 1m\ Ultra-Light\ 10
endif

" ----------------------------------------------------------------------------
" File Formats
" ----------------------------------------------------------------------------
au BufNewFile,BufRead *.jsm set filetype=javascript

"-----------------------------------------------------------------------------
" Vim Airline
"-----------------------------------------------------------------------------
" let g:airline_theme = 'Zenburn'
let g:airline_powerline_fonts = 1
" let g:bufferline_echo = 0
" set noshowmode

