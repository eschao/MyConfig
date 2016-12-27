#### Mapping Key Sequences

* Mapping

    ```vim
    "Typing -d to delete line
    :nnoremap -d dd 
    "Typing -c to delete line and puts you into insert mode
    :nnoremap -c dd0
    ```

* Mapping key in buffer

    ```vim
    :nnoremap <buffer> <leader>x dd  "only work in current buffer
    ```

#### Leader

* Set Leader key

    ```vim
    :let mapleader = "\<Space>"
    ```

* Mapping key with Leader

    ```vim
    :nnoremap <leader>d dd
    ```
* Local Leader
  Only take effect for certain types of files, like Python or Html files

    ```vim
    :let maplocalleader = "\\"
    ```
* Examples

    ```vim
    "Edit vimrc
    :nnoremap <leader>ev :tabnew $MYVIMRC<cr>
    
    "Source vimrc
    :nnoremap <leader>sv :source $MYVIMRC<cr>
    ```

#### Abbreviations
    
* Correct typo

    ```vim
    :iabbrev adn and "Inputing adn, vim will replace it with and right now
    ```

* Replace some often using strings
    
    ```vim
    :iabbrev @@ chao@gmail.com  "replace with my email
    ```

* Buffer-Local Abbreviation

    ```vim
    :iabbrev <buffer> --- &mdash;
    ```

#### A more complicated Mapping

  In normal mode, put your cursor over a word and type <leader>". The word will
be surrounded in double quotes

  ```vim
    :nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
  ```

  - **viw**: visually select the current word
  - **<esc>**: exit visual mode
  - **a**: enter insert mode after the current character
  - **"**: inser a " into the text
  - **<esc>**: return to normal mode
  - **h**: move left one character
  - **b**: move back to the begining of the word
  - **i**: enter insert mode before the current character
  - **"**: insert a " into the text again
  - **<esc>**: return to normal mode
  - **l**: move right, which puts our cursor on the first character of the word
  - **e**: move to the end of the word
  - **l**: move right, which puts our cursor over the ending quote

#### Buffer Local option

* Local settings

    ```vim
    :setlocal wrap  "only take effect in current buffer
    ```

* Shadowing

    ```vim
    :nnoremap <buffer> Q x
    :nnoremap          Q dd
    ```
    
  The first mapping will be executed since it is more specific than the second

#### Autocommands

**Autocommands** are a way to tell Vim to run certain commands whenever
certain events happend.

* Structure

  ```
  :autocmd BufNewFile * :write
             ^         ^ ^
             |         | |
             |         | The command to run
             |         |
             |         A "pattern" to filter the event
             |
             The "event" to watch for
  ```

* Multiple Events

    ```vim
    :autocmd BufWritePre,BufRead *.html :normal gg=G
    ```

* FileType Events

    ```vim
    "comment out the line
    :autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    :autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
    ```

* Autocommands & Abbreviations

    ```vim
    :autocmd FileType python :iabbrev <buffer> iff if:<left>
    ``` 

* Grouping Autocommands - remove duplicated autocmd when source VIMRC multiple
  times

    ```vim
    :augroup testgroup
    :   autocmd BufWrite * :echom "Foo"
    :   autocmd BufWrite * :echom "Bar"
    :augroup END
    ```
    
* Clearing Groups
    
    ```vim
    :augroup testgroup
    :   autocmd!
    :   autocmd BufWrite * :echom "Cats"
    :augroup END
    ```

    The **testgroups** will be cleared before defining new autocmd

#### Operator-Pending Movement Mapping

* Movement Mappings

    ```vim
    :onoremap p i(
    ```
    
    If type **dp**, it will be explain to **delete inside parentheses"
    If type **cp**, it will be explain to **delete inside parentheses and enter
insert mode**
    You can think it like this:
    - Start at the cursor position
    - Enter visual mode(charwise).
    - ... mapping keys go here ...
    - All the text you want to include in the movement should now be selected

* Execute

**execute** command takes a Vimscript string and performs it as command.

    ```vim
    :execute "write"  "Vim will write your file
    :execute "normal! gg"
    ```

#### Status Lines

* Define

    ```vim
    :set statusline=%f  " show file path on status line
    :set statusline=%f\ -\ FileType:\ %y
    ```

* Use **+** to combine

    ```vim
    :set statusline=%f
    :set statusline+=\ -\
    :set statusline+=FileType:
    :set statusline+=%y    
    ```

* Width and Padding

    ```vim
    " show line number with 4 characters, using spaces to fill. for example: [
12]
    :set statusline[%4l]
    " left padding
    :set statusline=Current:[%4l]
    " right padding
    :set statusline=Total:[%-4L]
    " use 0 as padding
    :set statusline=%04l
    ```

* Show help: **help statusline**

#### Othes commands

Cmd | Function
--- | --------
set iskeyword? | list all keyword characters 
\<c-c> | exit insert mode
\<c-[> | exit insert mode

