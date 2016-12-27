### Normal Command

Use **normal** to run some commands in normal mode

* Usage

    ```vim
    :normal G  " go to the last line
    :noramll ggdd  " go to the first line and delete it
    ```

* Avoiding mappings

    ```vim
    :nnoremap G dd  " map G with delete line
    :normal G  " pressing G in normal mode will delete a line

    :normal! G  " avoid mapping, move to the bottom of the file
    ```

* Special Characters

    ```vim
    :normal! /foo<cr>
    ```

    **normal!** doesn't parse special character sequences like **<cr>**

* Execute Noraml!

    ```vim
    :execute "normal@ gg/foo\<cr>dd"
    ```
    Move to the top of the file, search for the first occurrence of foo, delete
the line that contains it


