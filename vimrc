"Pathogen"
call pathogen#infect()

"Basic settings"
set nocompatible "Apparently this is a good idea."
syntax on "Syntax Highlighting"
set history=300 "300 lines of history"
set backspace=indent,eol,start "Backspace over autoindent, line breaks, and the start of insert"
set ruler "Show the ruler"
set virtualedit=onemore "Allows cursor placement over the line's end in normal mode"
set pastetoggle=<F2> "F2 enters paste mode in Insert mode"
set clipboard=unnamed "OS-level clipboard integration for yank and put"
set number "Show line numbers"
filetype plugin indent on "Automatic indentation based on filetype"
let &t_Co=256 "256 colors in the terminal"
"set cursorline "Highlight the current line"

"Search"
set hlsearch "Highlights search results"
set ignorecase "Case-insensitive search"
set smartcase "If a search contains an uppercase character, it is case-sensitive"
set incsearch "Incremental search: search as you type"

"Better split movement"
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
inoremap <c-h> <Esc><c-w>h
inoremap <c-l> <Esc><c-w>l
inoremap <c-j> <Esc><c-w>j
inoremap <c-k> <Esc><c-w>k

"Better wrapped line navigation"
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
vnoremap <down> gj
vnoremap <up> gk

"Indentation - please ignore how terrible this may be"
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

"Tab remaps"

"Tab always indents"
nnoremap <Tab> >>
inoremap <Tab> <Esc>>>i
vnoremap <Tab> >
"Shift-tab reverse-indenting"
nnoremap <S-Tab> <<
inoremap <S-Tab> <Esc><<i
vnoremap <S-Tab> <

"Delete key no longer deletes in normal mode"
nnoremap <del> <right>

"Color scheme"
let g:solarized_contrast = 'high'
colorscheme solarized

"GUI Typeface and font size"
set guifont=Inconsolata:h13

"Fix vim slowness in tmux"
set notimeout
set ttimeout
set timeoutlen=50

"Status settings"
set laststatus=2 "Always show the ruler in all splits"
let g:Powerline_colorscheme = 'solarized16'
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols_override = {
        \ 'BRANCH': [0x00b1],
        \ }
let g:Powerline_mode_n  = 'N'
let g:Powerline_mode_i  = 'I'
let g:Powerline_mode_R  = 'R'
let g:Powerline_mode_v  = 'V'
let g:Powerline_mode_V  = 'VL'
let g:Powerline_mode_cv = 'VB'
let g:Powerline_mode_s  = 'S'
let g:Powerline_mode_S  = 'SL'
let g:Powerline_mode_cs = 'SB'
let g:Powerline_stl_path_style = 'relative'
call Pl#Theme#RemoveSegment('fileformat')
call Pl#Theme#RemoveSegment('fileencoding')
call Pl#Theme#RemoveSegment('lineinfo')

"Autoclose pairs"
let g:AutoClosePairs_add = "\" \'"

"NERD tree"
autocmd vimenter * if !argc() | NERDTree | endif
