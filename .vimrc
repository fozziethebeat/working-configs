set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'prettier/vim-prettier'
Plugin 'koirand/tokyo-metro.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-colorscheme-primary'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

Plugin 'pangloss/vim-javascript'    " JavaScript support
Plugin 'leafgarland/typescript-vim' " TypeScript syntax
Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plugin 'jparise/vim-graphql'        " GraphQL syntax

" All of your Plugins must be added before the following line
call vundle#end()            " required

call glaive#Install()
" Glaive codefmt plugin[mappings]

augroup autoformat_settings
  autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
augroup END

filetype plugin indent on    " required
syntax enable
set re=0
packloadall
set expandtab
set tabstop=2
set shiftwidth=2
set t_Co=256
set background=dark
" colorscheme tokyo-metro
