set nocompatible
set number
set relativenumber
set nowrap
set showmatch
set hlsearch
set autoindent
set expandtab
set smartindent
set smarttab
set shiftwidth=4
set tabstop=4
set ruler

autocmd FileType vimwiki,md setlocal spell spelllang=en_us 
autocmd FileType vimwiki,md let b:auto_save = 1

let g:vimwiki_list = [{'path': '/media/ester/main/wiki/'}]      " VimWiki location
let g:airline_powerline_fonts = 1

" Auto-install plug.vim if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'vimwiki/vimwiki'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug '907th/vim-auto-save'
Plug 'jamessan/vim-gnupg'
call plug#end()

" Following requires using base16-shell
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
