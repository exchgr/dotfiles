"Pathogen"
call pathogen#infect()

"Basic settings"
syntax on
set history=300
set backspace=indent,eol,start
set hlsearch
set ruler
set virtualedit=onemore
set pastetoggle=<F2>
set clipboard=unnamed
set ignorecase
set number
filetype plugin indent on
let &t_Co=256
set cursorline

"Better split movement"
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

"Indentation"
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"Shift-tab reverse-indenting"
nnoremap <S-Tab> <<
inoremap <S-Tab> <Esc><<i

"Delete key no longer deletes in normal mode"
nnoremap <del> <right>

"Solarized color scheme"
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

"Monokai color scheme"
colorscheme Monokai

"Fix vim slowness in tmux"
set notimeout
set ttimeout
set timeoutlen=50

"Status settings"
set laststatus=2
