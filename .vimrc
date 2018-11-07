
"===== START VUNDLE CONFIG ====="
" For installation instructions go to https://github.com/gmarik/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
"===== END VUNDLE CONFIG ====="

"===== START MY BUNDLES ====="
" To get started run `git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/vundle
" Then open vim and type :BundleInstall
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-jdaddy'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'

Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/neosnippet.vim'
Bundle 'Shougo/neosnippet-snippets'

Bundle 'mileszs/ack.vim'

Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'

Bundle 'rizzatti/dash.vim'
Bundle 'bling/vim-airline'

"syntax
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mustache/vim-mustache-handlebars'

" colors
Bundle 'jnurmine/Zenburn'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'noahfrederick/vim-hemisu'
"===== END MY BUNDLES ====="

"==============================
"     bundles to add
"==============================
" Bundle 'SirVer/ultisnips'

" filetype plugin on
filetype plugin indent on
syntax on
syntax enable

" colors
" set t_Co=256
set background=dark

" let g:zenburn_high_Contrast=1
" colorscheme zenburn
" colorscheme molokai
" colorscheme hemisu

" http://ethanschoonover.com/solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" let g:rehash256=1

" settings
set mouse=a                     " because mouse
set number                      " line numbers
set nobackup                    " don't do backups
set ruler                       " show cursor position
set nowritebackup               " no backups
set cursorline
set noswapfile                  " no swapfiles
set hidden                      " hide buffers, rather than closing them
set modelines=0                 " don't allow modelines
set tabstop=2                   " two-space tabs
set shiftwidth=2                " two-space tabs
set expandtab                   " use spaces for tabs
" set autoread                    " autoread
set incsearch                   " show search matches while you type
" set ignorecase                  " ignore case when searching
set smartcase                   " ignore search case if all lowercase
set hlsearch                    " highlight search terms
set gdefault                    " default to global replace
set pastetoggle=<F2>            " toggle paste indentation w/ F2
set clipboard+=unnamed          " share clipboard
set clipboard=unnamed           " please work
set ttyfast                     " smoother redraws
set lazyredraw                  " do not redraw while executing macros
" set showcmd                     " display incomplete commands
set title                       " set the title
set shortmess+=atI              " eliminate annoying 'Press ENTER or type command to continue' notices
" set laststatus=1                " status bar only shows if multiple files are open
" set nolist                      " hide invisible characters

" indenting
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

" spell checking
au BufRead,BufNewFile *.md        set spell
au BufRead,BufNewFile *.markdown  set spell
au BufRead,BufNewFile *.txt       set spell

" status bar
" set statusline=\ %.99f\ %<%h%m%r%w%=%l/%L\ %P

" utf 8, just incase
scriptencoding utf-8
set encoding=utf-8

" custom binds I use
let g:mapleader = ","
nnoremap <leader><space> :noh<CR>
inoremap jj <Esc>
inoremap jk <Esc>
nnoremap <Space> :
noremap Y $
noremap T ^
noremap K i<CR><Esc>
" nmap <leader>w :set wrap!<CR>
" nmap <leader>k :set list!<CR>
" inoremap <C-tab> <Esc><<i
nnoremap j gj
nnoremap k gk
" nnoremap <silent> '. :cd %:p:h<cr>
nnoremap Q q
nnoremap q <nop>

map <S-Enter> O<Esc>j
map <CR> o<Esc>

" EasyMotion
"
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap <Leader><Leader>s <Plug>(easymotion-s2)
nmap <Leader><Leader>t <Plug>(easymotion-t2)

" nerdtree
nmap <silent> <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=1

" neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" nerdtree tab navigation
map <F1> :tabprev<CR>
map <F2> :tabnext<CR>

" highlight conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'


" move between panes
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" vim-commentary
xmap <leader>c <Plug>Commentary
nmap <leader>c <Plug>Commentary
nmap <leader>cc <Plug>CommentaryLine
nmap <leader>cu <Plug>CommentaryUndo

" splitjoin plugin
nmap zj :SplitjoinSplit<cr>
nmap zk :SplitjoinJoin<cr>

" dash plugin
if has('autocmd')
  augroup Dash
    autocmd!
    autocmd FileType coffee :DashKeywords javascript ember jquery moment nodejs angularjs bootstrap coffee
    autocmd FileType javascript :DashKeywords javascript ember jquery moment nodejs angularjs bootstrap
  augroup END
endif
nmap <silent> <leader>d <Plug>DashSearch
nmap <silent> <leader>D <Plug>DashGlobalSearch

" formatted paste
nmap <leader>p pV`]=
nmap <leader>P PV`]=

" tab indents
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" visual fold lines with F9
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" replace quotes
map <F3> :%s/"\(\([^"]*\)\)"/'\1'/g<cr>

" jump to last cursor position when opening a file.
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
  if &filetype !~ 'commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
     exe "normal g`\""
    endif
  end
endfunction
