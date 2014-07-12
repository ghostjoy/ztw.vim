set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle.vim/
call vundle#rc()

Bundle 'gmarik/vundle.vim'

let mapleader=","
let g:mapleader=","
let g:EasyMotion_leader_key='\'

"L9 is required by AutoComplPop
Bundle 'L9'
Bundle 'AutoComplPop'

" Syntax
Bundle 'othree/html5.vim'
Bundle 'othree/html5-syntax.vim'
Bundle 'scrooloose/syntastic'

"#
Bundle 'python_match.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'majutsushi/tagbar'

"highlights the matching HTML tag when the cursor is positioned on a tag
Bundle 'git://github.com/gregsexton/MatchTag.git'

"#
Bundle 'moskytw/tagit.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
Bundle 'Align'
Bundle 'tpope/vim-repeat'
Bundle 'pangloss/vim-javascript'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-pathogen'


" ctrl + x + enter : 產生對應的tag，而且中間會加上斷行
" ctrl + x + space : 同上，但不會加上斷行
Bundle 'tpope/vim-ragtag'

"#
Bundle 'git://github.com/vim-scripts/matchit.zip.git'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'mattn/zencoding-vim'
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'


"A vim plugin that simplifies the transition between multiline and single-line
"code
Bundle 'AndrewRadev/splitjoin.vim'

"comment <leader><leader>
Bundle 'scrooloose/nerdcommenter'

"add snipmate
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle "honza/vim-snippets"

"let bracket colorful

" --- end ---

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

