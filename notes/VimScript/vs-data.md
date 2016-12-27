### Lists

* Definition

    ```vim
    :echo ['foo', 3, 'bar']
    :echo ['foo', [3, 'bar']]
    ```

* Indexing

    ```vim
    :echo [0, [1, 2]][1]  " return [1, 2]
    :echo [0, [1, 2]][-2]  " return 0 
    ```

* Slicing

    ```vim
    :echo ['a', 'b', 'c', 'd', 'e'][0:2]  " return ['a', 'b', 'c']
    :echo ['a', 'b', 'c', 'd', 'e'][0:100000]  " return entire list
    :echo ['a', 'b', 'c', 'd', 'e'][-2:-1]  " return ['d', 'e']
    :echo ['a', 'b', 'c', 'd', 'e'][:1]  " return ['a', 'b']
    :echo ['a', 'b', 'c', 'd', 'e'][3:]  " return ['d', 'e']
    ```

    - Working on String
    
    ```vim
    :echo "abcd"[0:2]  " return "ab"
    ```

* Concatenation

    ```vim
    :echo ['a', 'b'] + ['c']  " return ['a', 'b', 'c']
    ```

* Functions

    Name | Function 
    ---- | --------
    add(foo, 'b') | Add to list
    len(foo) | Get list length
    get(foo, 0, 'default') | Get element at index
    index(foo, 'b') | Get index of element, -1 if not found
    join(foo) | Join list with space
    join(foo, ',') | Join list with ','

    
### Dictionary

* Definition

    ```vim
    :echo {'a':1, 100:'foo'}
    ```

* Index

    ```vim
    :echo {'a':1, 100:'foo'}['a']  " return 1
    :echo {'a':1, 100:'foo'}[100]  " return 'foo'
    :echo {'a':1, 100:'foo'}.a  " return 1
    :echo {'a':1, 100:'foo'}.100  " return 'foo'
    ```

* Assign and Add

    ```vim
    :let foo = {'a':1}
    :let foo.a = 100  " assign
    :let foo.b = 200  " add
    ```

* Remove

    ```vim
    :let test = remove(foo, 'a')
    :unlet foo.b
    ```

* Functions

    Name | Function 
    ---- | --------
    get({'a':100}, 'a', 'default') | Get value of key 'a'
    has_key({'a':100}, 'a') | Has key 'a'?
    items({'a':100, 'b':200}) | Return as [['a', 100], ['b', 200]]
