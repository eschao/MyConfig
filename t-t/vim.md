
* **gUU** Convert line to upper case
guu     : lowercase line
gf      : open file name under cursor
ga      : display hex
* **ddp** Swap the current line with the next line

^ move to line start
c        : starts a change command
   C        : change to end of line (same as c$)
   ce       : change to end of word (a complete change command)
:Ex file explore

CTRL-A,CTRL-X : increment, decrement next number

=             : (re)indent the text on the current line
=%            : (re)indent the current braces { ... }
G=gg          : auto (re)indent entire document

:reg     : display contents of all registers
"1p      : paste from register 1

:wn           : write file and move to next (SUPER)
:bd           : remove file from buffer list (SUPER)
:e!           : return to unmodified file


http://www.catswhocode.com/blog/100-vim-commands-every-programmer-should-know
