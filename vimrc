" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" Vundle packages
" Arduino syntax highlighting
Plugin 'vim-scripts/Arduino-syntax-file'
" Move between words in CamelCase and snake_case
Plugin 'bkad/CamelCaseMotion'
" Highlight matching HTML tags
Plugin 'gregsexton/MatchTag'
" Life-changing autocomplete
" Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/deoplete.nvim'
" javascript for deoplete
Plugin 'carlitux/deoplete-ternjs'
" js function parameter completion for deoplete
Plugin 'othree/jspc.vim'
" Snippets
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'
" Switch between alternate files
Plugin 'a.vim'
" The Silver Searcher from within Vim
Plugin 'mileszs/ack.vim'
" Delete and change method arguments
Plugin 'argtextobj.vim'
" Automatically type matching punctuation like in Sublime Text
Plugin 'jiangmiao/auto-pairs'
" Automatically close HTML tags
Plugin 'tpope/vim-ragtag'
" Fuzzy file (etc) matching
Plugin 'kien/ctrlp.vim'
Plugin 'JazzCore/ctrlp-cmatcher'
" Open files at specific lines from
Plugin 'file-line'
" HTML5 syntax, indent, omnicomplete
Plugin 'othree/html5.vim'
" Enhanced % matching
Plugin 'matchit.zip'
" Rename files/buffers
Plugin 'danro/rename.vim'
" Arduino compilation and delpoyment
Plugin 'tclem/vim-arduino'
" Coffeescript syntax
Plugin 'kchmck/vim-coffee-script'
" CSS3 syntax
Plugin 'hail2u/vim-css3-syntax'
" Like auto-pairs, but for `end` in Ruby
Plugin 'tpope/vim-endwise'
" Git from Vim
Plugin 'tpope/vim-fugitive'
" Show what's changed in the siderail
Plugin 'airblade/vim-gitgutter'
" Go syntax
Plugin 'fatih/vim-go'
" Jade syntax
Plugin 'digitaltoad/vim-jade'
" Better JavaScript syntax and indentation
Plugin 'pangloss/vim-javascript'
" JST highlighting
Plugin 'briancollins/vim-jst'
" JSX highlighting
Plugin 'mxw/vim-jsx'
" Nginx syntax
Plugin 'nginx.vim'
" Rails IDE for Vim
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
" Trim trailing spaces on save except in Markdown
Plugin 'itspriddle/vim-stripper'
" Stylus syntax
Plugin 'wavded/vim-stylus'
" Surround objects/selections with punctuation, or change it
Plugin 'tpope/vim-surround'
" Split and join one/multi-liners
Plugin 'AndrewRadev/splitjoin.vim'
" Enhanced statusline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Repeat more stuff with .
Plugin 'tpope/vim-repeat'
" Increment and decrement dates
Plugin 'tpope/vim-speeddating'
" Substitution, Abbreviation, Coercion.
Plugin 'tpope/vim-abolish'
" Useful mappings
Plugin 'tpope/vim-unimpaired'
" Quickly (un)comment lines
Plugin 'tpope/vim-commentary'
" Cross-editor space/tab configuration for projects
Plugin 'editorconfig/editorconfig-vim'
" Graphical undo tree
Plugin 'sjl/gundo.vim'
" MultiMarkdown syntax
Plugin 'jngeist/vim-multimarkdown'
" Syntax checker in the siderail
Plugin 'neomake/neomake'
" Extended ruby magic
Plugin 'vim-ruby/vim-ruby'
" Write HTML quickly
Plugin 'rstacruz/sparkup'
" Create your own text objects
Plugin 'kana/vim-textobj-user'
" Ruby block text objects
Plugin 'nelstrom/vim-textobj-rubyblock'
" rbenv integration with path, tags, tab complete
Plugin 'tpope/vim-rbenv'
" automatic ctags generation
Plugin 'szw/vim-tags'
" Quickly run specs in tmux
Plugin 'jgdavey/tslime.vim'
Plugin 'jgdavey/vim-turbux'
" tmux syntax
Plugin 'tmux-plugins/vim-tmux'
" AppleScript
Plugin 'applescript.vim'
" Air pairing
Plugin 'floobits/floobits-neovim'
Plugin 'mustache/vim-mustache-handlebars'
" dust templating
Plugin 'jimmyhchan/dustjs.vim'
" Varnish VCL
Plugin 'smerrill/vcl-vim-plugin'

" Colorschemes
" Plugin 'chriskempson/base16-vim'
" Plugin 'jonathanfilip/vim-lucius'

au BufRead,BufNewFile *.cson set ft=coffee

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
set hidden " Allow switching from unsaved buffers
set confirm " Confirmation dialog instead of fail on unwritten buffers
set scrolloff=3 " Mininum number of lines to keep above or below the cursor
set showcmd " shows partial commands and visual selection dimensions
set display=lastline " Show parts of wrapped lines that go offscreen instead of a useless column of @s.
set breakindent " wrap lines with the same indentation as the original line

" Show tab-complete options in command mode
set wildmode=longest,list,full
set wildmenu
set autoread " Automatically reload open files changed outside of Vim
autocmd BufEnter,FocusGained * checktime " Ask to reload changed files
let g:python_host_prog = '/usr/local/opt/python@2/bin/python'
let g:python3_host_prog = '/usr/local/opt/python/bin/python3'

"mouse support
set mouse=a

if &term =~ '^screen'
  set ttymouse=xterm2 " Fixes window resizing in tmux
end

" Cursorline in active window only
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" git commit length limiter
autocmd FileType gitcommit set colorcolumn=72

" Objective-C Alternate
autocmd FileType objc let g:alternateExtensions_h = "m"
autocmd FileType objc let g:alternateExtensions_m = "h"

" Don't split words on line breaks
set formatoptions=l
set lbr

" Search
set hlsearch " Highlights search results
set inccommand=nosplit " Highlights subtitution results
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

" neomake
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" ag instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ack_qhandler="botright copen"
let g:ack_lhandler="botright lopen"

" netrw
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25


" lite-dfm
nnoremap <Leader>l :LiteDFMToggle<CR>i<Esc>`^

" JSX
let g:jsx_ext_required = 0

" Abolish
nnoremap <Leader>q :%Subvert/{“,”,‘,’,–,—,…}/{\",\",',',--,---,...}/g<CR>i<Esc> " Dumb down characters

" CamelCaseMotion
map <silent> <Leader>w <Plug>CamelCaseMotion_w
map <silent> <Leader>b <Plug>CamelCaseMotion_b
map <silent> <Leader>e <Plug>CamelCaseMotion_e
map <silent> <Leader>ge <Plug>CamelCaseMotion_ge

omap <silent> <Leader>iw <Plug>CamelCaseMotion_iw
xmap <silent> <Leader>iw <Plug>CamelCaseMotion_iw
omap <silent> <Leader>ib <Plug>CamelCaseMotion_ib
xmap <silent> <Leader>ib <Plug>CamelCaseMotion_ib
omap <silent> <Leader>ie <Plug>CamelCaseMotion_ie
xmap <silent> <Leader>ie <Plug>CamelCaseMotion_ie

" Gundo
nnoremap <Leader>g :GundoToggle<CR>
nnoremap <Leader>G :GundoRenderGraph<CR>

" Dash
nmap <Leader>d <Plug>DashSearch
nmap <Leader>D <Plug>DashGlobalSearch

" vim-commentary
autocmd FileType go set commentstring=//\ %s

" deoplete
if !exists('g:deoplete#omni#functions')
  let g:deoplete#omni#functions = {}
endif

let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

if !exists('g:deoplete#sources')
  let g:deoplete#sources = {}
endif

let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
set completeopt-=preview

inoremap <expr><Down>  pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><Up>    pumvisible() ? "\<C-p>" : "\<Up>"

" Neosnippet
imap <C-j>     <Plug>(neosnippet_expand_or_jump)
smap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target)
let g:neosnippet#snippets_directory = "~/.neosnippet/"

" Turbux/tslime
"let g:turbux_command_prefix = 'bundle exec'
let g:no_turbux_mappings = 1
nmap <Leader>r <Plug>SendTestToTmux
nmap <Leader>R <Plug>SendFocusedTestToTmux
nmap <C-c>r <Plug>SetTmuxVars

" gitgutter
let g:gitgutter_diff_args = '-w'

" Close inactive buffers
function DeleteHiddenBuffers()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    silent execute 'bwipeout' buf
  endfor
endfunction

nmap <Leader>d :call DeleteHiddenBuffers()<CR>i<Esc>`^

" Indentation
set autoindent
set cindent
set copyindent " copy the previous indentation on ente
set smartindent " conflicts with filetype plugin indent on
set smarttab " Tab key inserts <shiftwidth> spaces
set tabstop=2 " Tab characters appear as 2 columns
set shiftwidth=2 " Indents are two space characters
set expandtab " Inserts spaces instead of tabs

" Fix vim slowness in tmux
set notimeout
set ttimeout
set timeoutlen=50

" Status settings
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

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

set laststatus=2 " Always show the ruler in all splits
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '' " '⮀'
let g:airline_left_alt_sep = '' " '⮁'
let g:airline_right_sep = '' " '⮂'
let g:airline_right_alt_sep = '' " '⮃'
let g:airline#extensions#branch#symbol = '± '
let g:airline#extensions#readonly#symbol = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline#extensions#paste#symbol =  'PASTE' "'⮁ PASTE'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
if has("gui_running")
  let g:airline_theme='base16'
else
  let g:airline_theme='tomorrow'
endif

" CtrlP
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_match_func = { 'match': 'matcher#cmatch' }

" Word count
nnoremap <Leader>cw :!wc %<CR>

" Session fuckery
set sessionoptions-=options  " Don't save options

" GUI Options
if has("gui_running")
  set guifont=Inconsolata:h13 " GUI Typeface and font size

  " Start maximized
  " set fu
  set fuoptions=maxvert,maxhorz
  set guioptions-=r " Remove the right scrollbar in MacVim
  set guioptions-=L " Remove the left scrollbar in MacVim
  set guioptions-=e " Display tabs textually instead of graphically
endif

set secure exrc
