"File: .vimrc
"Written By: Nate Groendyk
"Date: 14 March 2018 (Happy PI day)
"Notes: Make sure the plugins are installed in .vim. Also a  bunch of this was
"aggregated from other sources, and I hacked-guessed the vimscript syntax to
"get a few of the fine-tunings working as desired.

" Set the modelines.. pretty nice. allows you to encode vim commands in the doc you are reading.
" https://stackoverflow.com/questions/4590191/why-does-vim-ignore-my-modeline-values/41994024#41994024
:set modeline
:set modelines=5

:set background=dark
:highlight Normal ctermfg=white ctermbg=black
:set tabstop=4 shiftwidth=4
:set softtabstop=4
:set expandtab
:set hlsearch
"Map F2 to re-running local C-tag scripts to update tag files
":map <F2> :!"$PWD/runCtags.sh"<CR><CR>
:map <F2> :!"dirtags.sh"<CR><CR>


"setup ctrlP tag specifics
:set runtimepath^=~/.vim/bundle/ctrlp.vim

"Map F3 to the CtrlPTag command of the CtrlP plugin (which will list the file and tags associated to the word under cursor)
:map <F3> :CtrlPTag<CR>

"Enable the plugin manager needed for tagbar
:execute pathogen#infect()

"Map toggling the tagbar to F8
:map <F8> :TagbarToggle<CR>

"Enable Vim Mouse support
":set mouse=a

"Turn on NERDTRee tree view plugin
":autocmd vimenter * NERDTree

"Make sure NERDTree window exits when we exit all open vim files
":autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Turn on TagBar Pluggin
:autocmd vimenter * TagbarToggle

"Turn on MRU plugin
:autocmd vimenter * MRU

"Force MRU to always remain open after you open a most recently used file from MRU
:let MRU_Auto_Close = 0

"Force MRU to exit window when the open files are all exited in the 'main tab' 
:autocmd bufenter * if (bufwinnr("__MRU_Files__") ==1) | q | endif

"Reposition my cursor into the middle file where work will be.
":autocmd vimenter * execute "normal \<C-w>t\<C-w>l\<F8>\<F8>"

:autocmd vimenter * execute "normal \<C-w>t\<F8>\<F8>"


"Look in current directory for tag file, then search up and up and up in dir heirarchy. If cant resolve finally check the mega tag file
"Keep tag files from propogating up the source tree.
:set tags=./tags;,tags

" Example of conditionally adding a specific tag file
":if filereadable("${some_path_here}/tags")
":   set tags+="${some_path_here}"
":endif


":set textwidth=80

"Automatically change working directory to the current file....hopefully it
"doesnt screw up plugins

"Basically a #include....to include additional paths seperately.

"Source this for debugging
:if filereadable("$HOME/vimDbug.inc")
:   source $HOME/vimDbug.inc
:endif

"source this for cscope bindings rather than deal with plugin hasle
:source $HOME/.cscope_maps.vimrc

" Turns on/ Toggles Ansi Escape code-colorization of console-captured output
":AnsiEsc

"Fix a vim-background erase bug as noted in: https://github.com/microsoft/terminal/issues/832
:set t_ut=""
" Note since in vimrc, I did not need to re-trigger a background redraw by pressing CTRL-L

