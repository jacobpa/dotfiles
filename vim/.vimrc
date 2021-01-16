set nocompatible

set nu          " Show line numbers
set rnu         " Relative line numbers
set nowrap      " No line wrapping
set showmatch   " Briefly jump to matching bracket

set hlsearch    " Highlight all search matches

set autoindent      " Copy indent to next line
set expandtab       " Use spaces instead of tabs
set smartindent     " Smart indenting for C-like
set smarttab        " Add/delete expandtab tabs smartly
set shiftwidth=4    " Tab width for auto indents
set tabstop=4       " Tab width

autocmd FileType vimwiki,md setlocal spell spelllang=en_us 

set ruler       " Display ruler at bottom 

let g:vimwiki_list = [{'path': '/media/ester/main/wiki/'}]      " VimWiki location
let g:airline_powerline_fonts = 1

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
call plug#end()

" Following requires using base16-shell
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

