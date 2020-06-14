set fileencodings=utf-8
set nu
set backspace=indent,eol,start
set langmap=es
syntax on
set smartindent
set hidden
set rnu
set ruler
set shiftwidth=2
set tabstop=2 softtabstop=2
set expandtab
set cursorcolumn
set cursorline
filetype plugin indent on
set noswapfile
set incsearch
set nowrap
set wildmenu
set nobackup
set undodir=~/.vim/undodir
set undofile
set hlsearch
set showcmd
set lines=999 columns=80 
winpos 0 0
set winheight=999
set winminheight=0
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
autocmd BufEnter * lcd %:p:h


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'
Plug 'vim-scripts/AutoComplPop'
call plug#end()

colorscheme gruvbox
set background=dark

" ====NERDTREE
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERTreeWinPos="left"
let NERDTreeDirArrows = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Up> :resize +2<CR> 
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

let g:session_dir = '~/.vim/vim-sessions'
exec 'nnoremap <Leader>ss :mks! ' . g:session_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <Leader>sr :so ' . g:session_dir. '/*.vim<C-D><BS><BS><BS><BS><BS>'

set cmdheight=2
set updatetime=300

if has('gui_running')
  set guifont=Consolas:h11
endif

