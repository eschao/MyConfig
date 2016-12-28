### Functional Programming

* Functions as Variables

    ```vim
    :let Myfunc = function("Append")
    :echo Myfunc([1, 2], 3)
    ```
  **o** If a Vimscript variable refers to a function it must start with a
capital letter

* Higher-Order Functions

  **o** Higher-order functions are functions that take other functions and do
something with them

    ```vim
    function! Mapped(fn, 1)
        let new_list = deepcopy(a:1)
        call map(new_list, string(a:fn) . '(v:val)')
        return new_list
    endfunction

    let mylist = [[1, 2], [3, 4]]
    echo Mapped(function("Reversed"), mylist)
    ```
