" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" Vundle packages
" Arduino syntax highlighting
Bundle 'vim-scripts/Arduino-syntax-file'
" Move between words in CamelCase and snake_case
Bundle 'bkad/CamelCaseMotion'
" Highlight matching HTML tags
Bundle 'gregsexton/MatchTag'
" Life-changing autocomplete
Bundle 'Valloric/YouCompleteMe'
" Switch between alternate files
Bundle 'a.vim'
" Ack from within Vim
Bundle 'mileszs/ack.vim'
" Delete and change method arguments
Bundle 'argtextobj.vim'
" Automatically type matching punctuation like in Sublime Text
Bundle 'jiangmiao/auto-pairs'
" C-_ to close HTML tags
Bundle 'closetag.vim'
" Fuzzy file (etc) matching
Bundle 'kien/ctrlp.vim'
" Open files at specific lines from
Bundle 'file-line'
" HTML5 syntax, indent, omnicomplete
Bundle 'othree/html5.vim'
" Enhanced % matching
Bundle 'edsono/vim-matchit'
" File browser sidebar
Bundle 'scrooloose/nerdtree'
" Rename files/buffers
Bundle 'danro/rename.vim'
" Tumblr syntax highlighting
Bundle 'sonesuke/tumblr-vim'
" Arduino compilation and delpoyment
Bundle 'tclem/vim-arduino'
" Invoke Bundler from Vim
Bundle 'tpope/vim-bundler'
" Coffeescript syntax
Bundle 'kchmck/vim-coffee-script'
" CSS3 syntax
Bundle 'hail2u/vim-css3-syntax'
" Like auto-pairs, but for `end` in Ruby
Bundle 'tpope/vim-endwise'
" Git from Vim
Bundle 'tpope/vim-fugitive'
" Show what's changed in the siderail
Bundle 'airblade/vim-gitgutter'
" Go syntax
Bundle 'jnwhiteh/vim-golang'
" Jade syntax
Bundle 'digitaltoad/vim-jade'
" Better JavaScript syntax and indentation
Bundle 'pangloss/vim-javascript'
" Nginx syntax
Bundle 'nginx.vim'
" Rails IDE for Vim
Bundle 'tpope/vim-rails'
" Trim trailing spaces on save except in Markdown
Bundle 'itspriddle/vim-stripper'
" Stylus syntax
Bundle 'wavded/vim-stylus'
" Surround objects/selections with punctuation, or change it
Bundle 'tpope/vim-surround'
" Enhanced statusline
Bundle 'bling/vim-airline'
" Repeat more stuff with .
Bundle 'tpope/vim-repeat'
" Increment and decrement dates
Bundle 'tpope/vim-speeddating'
" Substitution, Abbreviation, Coercion.
Bundle 'tpope/vim-abolish'
" Useful mappings
Bundle 'tpope/vim-unimpaired'
" Quickly (un)comment lines
Bundle 'tpope/vim-commentary'
" Cross-editor space/tab configuration for projects
Bundle 'editorconfig/editorconfig-vim'
" Distraction-free mode
Bundle 'bilalq/lite-dfm'
" Graphical undo tree
Bundle 'sjl/gundo.vim'
" Base16 colorschemes
Bundle 'exchgr/base16-vim'
" MultiMarkdown syntax
Bundle 'jngeist/vim-multimarkdown'
" Syntax checker in the siderail
Bundle 'scrooloose/syntastic'
" Next 2: Dash.app integration
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" Basic settings
filetype plugin indent on
syntax on " Syntax Highlighting
set history=300 "300 lines of history"
set backspace=indent,eol,start " Backspace over autoindent, line breaks, and the start of insert
set ruler " Show the ruler
set virtualedit=onemore " Allows cursor placement over the line's end in normal mode
set pastetoggle=<F2> " F2 enters paste mode in Insert mode
set clipboard=unnamed " OS-level clipboard integration for yank and put
set number " Show line numbers
let &t_Co=256 " 256 colors in the terminal
" set cursorline " Highlight the current line
set mouse=a " Mouse support
set hidden " Allow switching from unsaved buffers
set confirm " Confirmation dialog instead of fail on unwritten buffers
set scrolloff=3 " Mininum number of lines to keep above or below the cursor
set showcmd " shows partial commands and visual selection dimensions
set display=lastline " Show parts of wrapped lines that go offscreen instead of a useless column of @s.

" Objective-C Alternate
autocmd FileType objc let g:alternateExtensions_h = "m"
autocmd FileType objc let g:alternateExtensions_m = "h"

" Don't split words on line breaks
set formatoptions=l
set lbr

" Search
set hlsearch " Highlights search results
set ignorecase " Case-insensitive search
set smartcase " If a search contains an uppercase character, it is case-sensitive
set incsearch " Incremental search: search as you type

" Remaps

" Make Y behave like other capitals
nnoremap Y y$

" Better split movement
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
inoremap <c-h> <Esc><c-w>h
inoremap <c-l> <Esc><c-w>l
inoremap <c-j> <Esc><c-w>j
inoremap <c-k> <Esc><c-w>k

" Better wrapped line navigation
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
vnoremap <down> gj
vnoremap <up> gk

" Indenting from visual mode reselects the previous selection
vnoremap > >gv
vnoremap = =gv
vnoremap < <gv

nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT
inoremap <C-Tab> <Esc>gt
inoremap <C-S-Tab> <Esc>gT

" Delete key no longer deletes in normal mode
nnoremap <del> <right>

" NERDTree
nnoremap <space><space> :NERDTreeToggle<cr>
nnoremap <space>f :NERDTreeFind<cr>
nnoremap <Leader><space> :NERDTree<cr>

" lite-dfm
nnoremap <Leader>l :LiteDFMToggle<CR>i<Esc>`^

" Abolish
nnoremap <Leader>q :%Subvert/{“,”,‘,’,–,—,…}/{\",\",',',--,---,...}/g<CR>i<Esc> " Dumb down characters

" Gundo
nnoremap <Leader>g :GundoToggle<CR>
nnoremap <Leader>G :GundoRenderGraph<CR>

" Dash
nmap <Leader>d <Plug>DashSearch
nmap <Leader>D <Plug>DashGlobalSearch

" vim-commentary
autocmd FileType go set commentstring=//\ %s

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" Indentation - please ignore how terrible this may be
set autoindent
set cindent
set copyindent " copy the previous indentation on ente
set smartindent " conflicts with filetype plugin indent on
set smarttab " Tab key does indents
set tabstop=2 " Tabs appear as 2 spaces
set shiftwidth=2
set expandtab

" Color scheme
" let g:molokai_original = 1
let base16colorspace=256
set background=light
colorscheme base16-atelierforest
highlight clear SignColumn " Clears git gutter's ugly dark grey

" Fix vim slowness in tmux
set notimeout
set ttimeout
set timeoutlen=50

" Status settings
set laststatus=2 " Always show the ruler in all splits
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '' " '⮀'
let g:airline_left_alt_sep = '' " '⮁'
let g:airline_right_sep = '' " '⮂'
let g:airline_right_alt_sep = '' " '⮃'
let g:airline#extensions#branch#symbol = '± '
let g:airline#extensions#readonly#symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'
let g:airline#extensions#paste#symbol =  'PASTE' "'⮁ PASTE'
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ '' : 'VB',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_theme='lucius'

nnoremap <Leader>w :!wc %<CR>

" Session fuckery
set sessionoptions-=options  " Don't save options

" GUI Options
if has("gui_running")
    set guifont=Inconsolata:h13 " GUI Typeface and font size

    " Start maximized
    set fu
    set fuoptions=maxvert,maxhorz
    set guioptions-=r " Remove the right scrollbar in MacVim
    set guioptions-=L " Remove the left scrollbar in MacVim
    set guioptions-=e " Display tabs textually instead of graphically
endif
