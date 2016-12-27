### Functions

#### Definition

**Vimscript** functions must start with a capital letter if they are unscoped**

  ```vim
    :function Meow()
    :   echom "Meow!"
    :endfunction
  ```

#### Call Function

  ```vim
    :call Meow()

    :function GetMeow()
    :   return "Meow String!"
    :endfucntion

    :echom GetMeow()
  ```

#### Function Arguments

  ```vim
    :function DisplayName(name)
    :   echom a:name
    :endfunction
  ```
  **a:** represents a variable scope

#### Varargs

* Example

    ```vim
    :function Varg(...)
    :   echom a:0  " display args number
    :   echom a:1  " first argument
    :   echo a:000 " a list containing all the extra arguments
    :endfunction
    
    :call Varg("a", "b")
    ```
* Another example

    ```vim
    :function Varg2(foo, ...)
    :   echom a:foo
    :   echom a:0
    :endfunction
    ```

#### Assignment

* You can't reassign argument varaible, the below will throw an error

    ```vim
    :function Assign(foo)
    :   let a:foo = "Nope"
    :   echom a:foo
    :endfunction
    ```

