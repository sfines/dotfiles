set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

if has("gui_running")
  colorscheme evening
 if has("gui_gtk2")
  set guifont=Inconsolata\ 12
 elseif has("gui_win32")
  set guifont=Consolas:h9:cANSI
 endif
endif

set shiftwidth=4 softtabstop=4
set incsearch hlsearch

filetype plugin on 
runtime macros/matchit.vim
