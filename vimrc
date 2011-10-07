call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

if has("win32")
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
endif

if has('gui_running')
    set background=light
		colorscheme solarized
endif

set tabstop=2
set shiftwidth=2
set encoding=utf8

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L "left scrollbar

if has("win32")
	set guifont=DejaVu_Sans_Mono:h14
endif

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    " Do Mac stuff here
		set guifont=Menlo:h14
  endif
endif

set backup
set backupdir=$HOME/.vimbackup
set smartindent
set hlsearch
set ruler

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
