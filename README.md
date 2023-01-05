# NatesEnv_Ub
Incase my VM dies and I need to rebuild it. These are my environment settings.

# To install ANSI Escape highlighting (i.e, if you capture colorized command o/p to a file and view with vim, this will
# remove all the escape code jargon and actually colorize the lines as if viewed from commandline)

here is the install (as per: https://www.vim.org/scripts/script.php?script_id=302)
(setup.sh script does this)
vim AnsiEsc.vba.gz
:so %
:q

Then, to run, in vim simply type:
:AnsiEsc

