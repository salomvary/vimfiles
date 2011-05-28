call pathogen#runtime_append_all_bundles() 

if has("win32")
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	behave mswin
endif

if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme solarized

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

