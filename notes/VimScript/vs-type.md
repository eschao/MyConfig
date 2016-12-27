### Numbers

* Number Formats

    Example | Type
    ------- | ----
    :echom 100 | Integer
    :echom 0xff | Hex
    :echom 010 | Octal
    :echom 100.1 | Float
    :echom 15.45e-2 | Float

* Coercion

    ```vim
    :ech 2 * 2.0  " output is 4.0
    ```

* Division

    ```vim
    :echo 3 / 2  " is 1
    :echo 3 / 2.0  " is 1.5
    ```

### Strings

#### String Concatenation

* Concatenation with **+**

    ```vim
    :echom "hello, " + "world" 
    ```

* Coericion

    ```vim
    :echom "3 mice" + "2 cats"  " is 5
    :echom 10 + "10.10"  " is 20
    ```

* No Coericion with **.** concatenation

    ```vim
    :echom 10 . "foo"  " is 10foo
    :echom 10.1 . "foo"  " throw error since Float can't be used as String
    ```

* Special Characters with **\**

    ```vim
    :echom "foo \"bar\""
    ```

* Literal String with single quote

    ```vim
    :echom '\n\\'  " is \n\\
    ```

#### String Functions

    Name | Function
    ---- | --------
    strlen("foo") | Get string length
    len("foo") | Get string length
    split("one two three") | Split string with space
    split("one,two,three", "," | Split string with given char ','
    join(["foo", "bar"], ";" | Join string with given char ';'
    tolower("Foo") | String to lower case
    toupper("Foo") | String to upper case

#### Execute

The **execute** command is used to evaluate a string as a Vimscript command

    ```vim
    :execute "echom 'Hello, world!'"
    ```

