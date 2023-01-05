#!/bin/bash
#Written By: Nate Groendyk
#Purpose: Using awesome vim8.1 and gdb 8.1 to dbug right in vim.

#make sure user specified a filename
if [ -z "$1" ]; then
    echo "Need a file"
    exit -1
fi

if [ ! -e "$1" ]; then
    echo "File must exist!"
    exit -1
fi

#Create the file we use for debugging stuff
echo ":autocmd vimenter * execute \"normal \<F8>\"" > $HOME/vimDbug.inc
echo ":set mouse=a" >> $HOME/vimDbug.inc
echo ":packadd termdebug" >> $HOME/vimDbug.inc
echo ":let g:termdebug_wide = 163" >> $HOME/vimDbug.inc
echo ":Termdebug $1" >> $HOME/vimDbug.inc

#run vim
#vim -u $HOME/vimDbug.inc
vim

#cleanup vimDbug.inc
echo "\"Empty source file. Need to prevent vim errors and also to prevent vim from starting a dbug. See vimdebug.sh and .vimrc for details" > $HOME/vimDbug.inc

#vim messes up the terminal screen afterward, so clear it.
clear

