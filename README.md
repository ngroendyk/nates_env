# NatesEnv_Ub
Incase my VM dies and I need to rebuild it. These are my environment settings.

# VIM Notes
## ANSI Escape highlighting
## Intro
When you dump a bunch of colorized command output from STDOUT/STDERR to a file
(via redirection), the color-escape codes get written to the file and make reading
the captured data less-fun in vim. This pluggin does 2 things:
1) removes the Escape color codes from the file.
2) Colorises the contents of the file as-per the Escape color codes.

This in turn makes reading captured files more clear, and fun :) more-closely
mimicing what would have been observed on command line.

### Install Notes
here is the install (as per: https://www.vim.org/scripts/script.php?script_id=302)
(setup.sh script does this)
vim AnsiEsc.vba.gz
:so %
:q

If you used the 'setup.sh' script, the plugin would have been installed for you

### Usage (in vim)
To use / toggle the Ansi Escape plugin on a file with captured colorized
console/error output, in vim, simply run:
 ```
 :AnsiEsc
 ```
to toggle the plugin

