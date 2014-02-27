" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" Vundle packages
Bundle 'vim-scripts/Arduino-syntax-file'
Bundle 'bkad/CamelCaseMotion'
Bundle 'gregsexton/MatchTag'
Bundle 'Valloric/YouCompleteMe'
Bundle 'a.vim'
Bundle 'mileszs/ack.vim'
Bundle 'argtextobj.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'closetag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'file-line'
Bundle 'othree/html5.vim'
Bundle 'tsaleh/vim-matchit'
Bundle 'tomasr/molokai'
Bundle 'scrooloose/nerdtree'
Bundle 'danro/rename.vim'
Bundle 'sonesuke/tumblr-vim'
Bundle 'tclem/vim-arduino'
Bundle 'tpope/vim-bundler'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'jnwhiteh/vim-golang'
Bundle 'digitaltoad/vim-jade'
Bundle 'pangloss/vim-javascript'
Bundle 'nginx.vim'
Bundle 'tpope/vim-rails'
Bundle 'itspriddle/vim-stripper'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-surround'
Bundle 'bling/vim-airline'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-abolish'
" vim-abolish: Substitution, Abbreviation, Coercion.
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'bilalq/lite-dfm'
Bundle 'sjl/gundo.vim'
Bundle 'exchgr/base16-vim'
Bundle 'jngeist/vim-multimarkdown'

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

" Tab always indents
nnoremap <Tab> >>
inoremap <Tab> <Esc>>>i
vnoremap <Tab> >gv
vnoremap > >gv
vnoremap = =gv
" gv reselects the previous selection

" Shift-tab reverse-indenting
nnoremap <S-Tab> <<
inoremap <S-Tab> <Esc><<i
vnoremap <S-Tab> <gv
vnoremap < <gv
" gv reselects the previous selection

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

" vim-commentary
autocmd FileType go set commentstring=//\ %s

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
set background=dark
colorscheme base16-monokai
highlight clear SignColumn " Clears git gutter's ugly dark grey

" Fix vim slowness in tmux
set notimeout
set ttimeout
set timeoutlen=50

" Status settings
set laststatus=2 " Always show the ruler in all splits
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline#extensions#branch#symbol = '± '
let g:airline#extensions#readonly#symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡ '
let g:airline#extensions#paste#symbol = '⮁ PASTE'
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
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Fast word count in airline
function! WordCount()
  let s:old_status = v:statusmsg
  let position = getpos(".")
  exe ":silent normal g\<c-g>"
  let stat = v:statusmsg
  let s:word_count = 0
  if stat != '--No lines in buffer--'
    let s:word_count = str2nr(split(v:statusmsg)[11])
    let v:statusmsg = s:old_status
  end
  call setpos('.', position)
  return s:word_count
endfunction

let g:airline_section_y = '%{WordCount()} words'

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
