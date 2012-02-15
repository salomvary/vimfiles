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
set laststatus=2

if has("win32")
	set guifont=DejaVu_Sans_Mono:h14
endif

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    " Do Mac stuff here
		" get the Powerline font from here: 
		" https://gist.github.com/1595572
		set guifont=Menlo\ for\ Powerline:h14
		"set guifont=Menlo:h14
		let g:Powerline_symbols = 'fancy'
  endif
endif

set backup
set backupdir=$HOME/.vimbackup
set smartindent
set hlsearch
set incsearch
set ruler
" disable flash and beep:
set visualbell
set t_vb=
" automatically format comment lines in insert mode
set formatoptions+=roc


autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

au! BufRead,BufNewFile *.json set filetype=json 
au BufRead,BufNewFile *.sbt set filetype=scala

