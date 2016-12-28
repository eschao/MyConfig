### Path

  Command | Function
  ------- | --------
  expand('%') | relative path of whatever file you're editing
  expand('%:p') | full path of file you're editing
  fnamemodify('foo.txt', ':p') | combine file name with full path of current dir
  globpath('.', '*') | show all of the files and dirs in the current directory
  split(globpath('.', '*'), '\n') | get a list of all files
  expand('<sfile>:p:h:h') | Get plugin directory's full path
