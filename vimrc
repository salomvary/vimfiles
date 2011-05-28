set nocompatible
call pathogen#runtime_append_all_bundles() 

if has("win32")
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	behave mswin
endif


