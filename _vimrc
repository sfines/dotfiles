set nocompatible
set ruler
set autoread
set showmode
set autoindent smartindent
set smarttab
set tabstop=2
set backspace=indent,eol,start
set cmdheight=2
set undolevels=500
set magic
set cursorline

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'gmarik/vundle'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'jpalardy/vim-slime.git'
Plugin 'VimClojure'
Plugin 'derekwyatt/vim-scala'

" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
" non github repos
Plugin 'git://git.wincent.com/command-t.git'
" 
call vundle#end()

filetype plugin indent on     " required!

if has("gui_running")
  colorscheme evening
 if has("gui_gtk2")
  set guifont=Inconsolata\ 12
 elseif has("gui_win32")
  set guifont=Consolas:h9:cANSI
 endif
endif

set shiftwidth=2 softtabstop=2
set incsearch hlsearch
let g:slime_paste_file = "$HOME/.slime_paste"
filetype plugin on 
runtime macros/matchit.vim

let g:vimclojure#HighlightBuiltins=1   " Highlight Clojure's builtins
let g:vimclojure#ParenRainbow=1        " Rainbow parentheses'!
let g:vimclojure#DynamicHighlighting=1

 

function GetClojureFold()
    if getline(v:lnum) =~ '^\s*(defn.*\s'
      return ">1"
    elseif getline(v:lnum) =~ '^\s*(defmacro.*\s' 
      return ">1"
    elseif getline(v:lnum) =~ '^\s*(defmethod.*\s' 
      return ">1"
    elseif getline(v:lnum) =~ '^\s*$'
      let my_cljnum = v:lnum
      let my_cljmax = line("$")
      while (1)
	let my_cljnum = my_cljnum + 1
	if my_cljnum > my_cljmax 
	  return "<1"
	endif
	let my_cljdata = getline(my_cljnum)

	if my_cljdata =~ '^$'
	  return "<1"
	else
	  return "="
	endif
      endwhile
    else
      return "="
    endif
  endfunction

  function TurnOnClojureFolding()
    setlocal foldexpr=GetClojureFold()
    setlocal foldmethod=expr
  endfunction

autocmd FileType clojure call TurnOnClojureFolding()
runtime macros/matchit.vim
