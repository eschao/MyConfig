### Toggling

* Toggle a boolean option

    ```vim
    :nnoremap <leader>N :setlocal number!<cr>
    ```

    Pressing <leader>N will toggle the line numbers for the current window off
and on

* Toggle with a non-boolean option

    ```vim
    :nnoremap <leader>f :call FoldColumnToggle()<cr>

    :function! FoldColumnToggle()
    :   if &foldcolumn
    :       setlocal foldcolumn=0
    :   else
    :       setlocal foldcolumn=4
    :   endif
    :endfunction
    ```
    
    Pressing <leader>f will either show or hide the fold column

* Toggle Other things

    ```vim
    :nnoremap <leader>q :call QuickfixToggle()<cr>
    :let g:quickfix_is_open = 0
    :function! QuickfixToggle()
    :   if g:quickfix_is_open
    :       cclose
    :       let g:quickfix_is_open = 0
    :   else
    :       copen
    :       let g:quickfix_is_open = 1
    :   endif
    :endfunction

    
