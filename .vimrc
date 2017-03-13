set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'

" Fix Python indentation
Plugin 'vim-scripts/indentpython.vim'

" Color scheme
colorscheme zenburn

" Python syntax highlighting
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" Check syntax on save
Plugin 'scrooloose/syntastic'

" PEP8 validation
Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

" ### All plugins MUST be added before this line ###
call vundle#end()            " required
filetype plugin indent on    " required

" Set backspace behavior
set backspace=indent,eol,start

" Python Indentation
au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Web Development Indentation
au BufNewFile,BufRead *.js, *.html, *.css:
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Whitespace Flagging
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF8 Support
set encoding=utf-8

" Line numbering 
set nu


