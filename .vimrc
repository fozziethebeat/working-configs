set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'koirand/tokyo-metro.vim'
Plugin 'posva/vim-vue'
Plugin 'google/vim-colorscheme-primary'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
syntax enable
set expandtab
set tabstop=2
set shiftwidth=2
set t_Co=256
set background=dark
colorscheme tokyo-metro
