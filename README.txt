1.a Windows 

Clone into ~/vimfiles

Create vimrc with the following content:
 source $HOME/vimfiles/vimrc

1.b Linux/Mac

Clone into ~/.vim

Create vimrc with the following content:
 source $HOME/.vim/vimrc

2. install pathogen:
 https://github.com/tpope/vim-pathogen

3. git submodule init; git submodule update

Post-install

4. Compile Command-T
	cd ~/.vim/bundle/command-t
	rake make

5. Install vim-powerline font. See ~/.vim/vimrc for instructions.
