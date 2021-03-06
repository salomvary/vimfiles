source $VIMRUNTIME/macros/matchit.vim

call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

if has("win32")
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
endif

if has('gui_running')
    "set background=dark
		colorscheme solarized
endif

set tabstop=2
set shiftwidth=2
set encoding=utf8
"set textwidth=80

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L "left scrollbar
set laststatus=2
set et

if has("win32")
	set guifont=DejaVu_Sans_Mono:h15
endif

if has("unix")
	let g:Powerline_symbols = 'fancy'
	" get Linux Powerline front from here:
	" https://github.com/scotu/ubuntu-mono-powerline/ 
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    " Do Mac stuff here
		" get the Powerline font from here: 
		" https://gist.github.com/1595572
		set guifont=Menlo\ for\ Powerline:h15
		"set guifont=Menlo:h14
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
" automatically format comment lines in insert mode (:help comments)
set formatoptions+=roc

" highlight whitespace errors
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

au! BufRead,BufNewFile *.json set filetype=json 
au BufRead,BufNewFile *.sbt set filetype=scala

filetype plugin indent on

" wildignore settings from here:
" https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=classes
set wildignore+=target


let g:Powerline_stl_path_style = "short"
let g:CommandTMatchWindowReverse = 1

"enable extended pattern matching in bash
set shell=/bin/bash\ -O\ extglob

let g:syntastic_check_on_open = 1
"let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

dig .3 8230 " unicode … digraph

call togglebg#map("<F5>")

"Use GitHub Markdown by default
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
