set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-sort-motion'
Plugin 'rust-lang/rust.vim'
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on
set number relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set incsearch
set ignorecase
"if the pattern contains an uppercase letter, it will turn on case sensitive"
set smartcase

" Set relative number dynamic changing"
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
