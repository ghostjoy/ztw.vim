set nocompatible                      " not compatible with the old-fashion vi mode
let g:rainbow_active = 0
set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
"set mouse=a
set ai "Auto indent
set si "smart indent
set linebreak
set nolist
set hidden
set linespace=0
"set cursorline
set nofoldenable
set number
set numberwidth=4
set title
set showmode
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline
set laststatus=2
set clipboard=unnamed
set splitright                        " always open vertical split window in the right side
" show matching brackets when text indicator is over them
set showmatch
set splitbelow                        " always open horizontal split window below
set scrolloff=5                       " start scrolling when n lines away from margins
set switchbuf=useopen
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set key=			                        " disable encryption
set viminfo=			                    " disable .viminfo file
set ttyfast                           " send more chars while redrawing
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins

syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search

noremap <CR> :nohlsearch<CR>

"completion
set completeopt=menu,menuone
set pumheight=15

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
"                     endif
" Set extra options when running in GUI mode

if has("gui_running") " GUI color and font settings
  set guifont=Osaka-Mono:h22
  set background=dark
  set t_Co=256          " 256 color mode
  "set cursorline        " highlight current line
  colors moria
  "highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none
else
" terminal color settings
 colors rails_envy
 "colors kolor
 "colors moskyfav
 "colors railscasts
 "colors monokai
 set t_Co=256
 "autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=51 ctermbg=27 guifg=NONE guibg=NONE gui=NONE
 "set cursorline
endif
set nobackup                          " no *~ backup files
set noswapfile
set nowritebackup
set copyindent                        " copy the previous indentation on autoindenting
set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
autocmd FileType python setlocal et sta sw=4 sts=4
set shortmess=Ia                      " remove splash wording
set lazyredraw
set ambiwidth=double

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" ======================================
"  custom key and plugin configurations
" ======================================
" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" comment
map <Leader><Leader> <Leader>c<space>

"file saving
nmap <leader>w :w!<cr>

" next and prev tab
noremap <F7> gT
noremap <F8> gt

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" remap VIM 0
map 0 ^

" return current opened file's dirctory
cnoremap %% <C-R>=expand('%:h').'/'<CR>

" quick open vimrc in a new tab
nmap <leader>v :tabe $MYVIMRC<CR>
map <leader>0 :topleft 100 :split README.md<CR>

"mappings to move lines

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

if has("gui_macvim")
 set transparency=0

  "disable IM while leaving insert mode
  "autocmd InsertEnter * set noimdisable
  "autocmd InsertLeave * set imdisable

  " move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <D-j> mz:m+<cr>`z
  nmap <D-k> mz:m-2<cr>`z
  vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

  " disable default menu hot key
  macmenu &File.New\ Window key=<nop>
  macmenu &File.Close key=<nop>

  " remap cmd + w to close tab
  map <D-w> :tabclose<CR>

  " remap cmd + n to new tab
  map <D-n> :tabnew<CR>

  " map cmd + enter to switch to full screen
  map <D-Enter> :set invfu<CR>

  " map cmd+1~9 to switch tab 1~9
  for i in range(1, 9)
    exec "nnoremap <D-".i."> ".i."gt"
  endfor

endif

" map backspce to delete a character
"noremap <BS> X

" map ctrl+c and ctrl+v
"noremap <C-c> y
"noremap <C-v> P

" select ALL
map <C-A> ggVG

" syntastic

" "let g:syntastic_check_on_wq=0
let g:syntastic_enable_signs=0

" ctrlp.vim
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_follow_symlinks = 1

