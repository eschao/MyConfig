## Variables

#### Definition

  ```vim
    :let foo = "bar"
    :echo foo

    :let bar = 42
    :echo bar
  ```

#### Options as Variables

You can read and set options as variables by using speical syntax

    ```vim
    :set textwidth=80
    :echo &textwidth  " tell vim you're referring to the option not a variable
    :let &textwidth=100
    :set textwidth?
    ```

* Local Options

    ```vim
    :let &l:number = 1
    ```

* Registers as Variables

    ```vim
    :let @a="hello!"
    ```

* Variable Scoping

    ```vim
    " b: means the variable hello should be local to the current buffer
    :let b:hello = "world"
    ```

#### Multiple-Line Statements

    ```vim
    :echom "foo" | echom "bar"
    ```

#### Basic If

    ```vim
    :if 1
    :   echom "ONE"
    :endif

    :if 0
    :   echom "ZERO"
    :endif

#### Else and Elseif

    ```vim
    :if 0
    :   echom "if"
    :elseif "nope!"
    :   echom "elseif"
    :else
    :   echom "finally!"
    ```

#### Case Sensitivity

* Case Sensitivity/Insensitive

    ```vim
    :set noignorecase
    :if "foo" == "FOO"
    :   echom "vim is case ins..."
    :elseif "foo" == "foo"
    :   echom "vim is ...."
    :endif

    :set ignorecase
    :if "foo" == "FOO"
    :   echom "no, it couldn't be"
    :elseif "foo" == "foo"
    :   echom "this must be..."
    :endif
    ```

* **==?** Case-insensitive no matter what the user has set

    ```vim
    :set ignorecase
    :if "foo" ==? "FOO"
    :   echom "first"
    ```

* **==#* Case-sensitive no matter what the user has set

    ```vim
    :set ignorecase
    :if "foo" ==# "FOO"
    :   ehcom "one"
    ```
