set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

"Pathogen
execute pathogen#infect()

"Auto indent
Plugin 'vim-scripts/indentpython.vim'
"Auto Complete
Plugin 'Valloric/YouCompleteMe'

Plugin 'NLKNguyen/papercolor-theme'
Plugin 'nvie/vim-flake8'
"NerdTree
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"vim-go
Plugin 'fatih/vim-go'

Plugin 'tpope/vim-fugitive'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"NERDTree settings
"Opens a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

"Opens NERDTree automatically -no files needed to be specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Close vim if only window open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 


"haskell-vim
syntax on
filetype plugin indent on


"Colorscheme from papercolor
set t_Co=256
set background=dark



colorscheme srcery 
"colorscheme PaperColor


set number
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
set hlsearch
set ruler

highlight Comment ctermfg=green
