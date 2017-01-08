### Syntax

#### Import (ES6)

* import
    ```js
    import "my-module";
    import * as myModule from "my-module"
    import {myMember} from "my-module";
    import {foo, bar} from "my-module";
    import {realNameOfMyMember as shortName} from "my-module"
    import {myMember1 as shortName1, myMember2 as shortName2} from "my-module"
    ```
* import defaults, see **export default**
    ```js
    import myDefault from "my-module"
    import myDefault, * as myModule from "my-module"
    import myDefault, {foo, bar} from "my-module"
    ```

#### Export (ES6)

* export anything
    ```js
    export {myFunc1, myClass1, myVar1, ...};
    export (myFunc1 as func1, myVar1 as var1, ...};
    export let var1, var2, ...;
    export let var1 = name1, var2 = name2, ...;
    ```
* export default
    - Can be a function, a class, an object or anthing
    - To be considered as the **main** exported value
    - Be the simplest to **import**
    - Examples:
    ```js
    export default expression;
    export default function (...) { ... };
    export default function name(...) { ... };
    export default class { ... };
    export {name1 as default, ...};
    ```

* export * from ...
    ```js
    export * from ...;
    export {name1, name2, ..., nameN} from ...;
    export { import1 as name1, import2 as name2, ... } from ...;
    ```

### Class (ES6)

* Can't be declared twice
* Constrcutor property is optional
* Class body is executed in strict mode
* Declaration
    ```js
    class Animal {
        constructor() {
            this.name = "animal";
        }

        memberFunc1() {
        }

        get name() {
            return this.name;
        }

        set name(value) {
            this.name = value;
        }
    }

    class Cat extends Animal {
        constrcutor(name) {
            super();
            ...
        }
    }
    ```
* Anonymous declaration
    ```js
    var Foo = class {};

    // error since class Foo is declared
    class Foo {};
    ```

### Const (ES6)

* Syntax
    ```js
    const name = value1 [, name2 = value2, ...];
    ```

* Examples
    ```js
    const MY_VAR = 7;

    // error
    MY_VAR = 2;
    const MY_VAR = 5;
    var MY_VAR = 20;
    let MY_VAR = 21;
    ```

    ```js
    const MY_OBJECT = {"key", "value"};
    MY_OBJECT.key = "value2";

    // error
    MY_OBJECT = {"key2", "value2"};
    ```

    ```js
    const MY_ARRAY = [];
    MY_ARRAY.push("A");

    // error
    MY_ARRAY = ["B"]
    ```

### Static (ES6)

* Defines a static methond for a class
* Static method can be overrided
* Static method can't be called by class instance
* Syntax
    ```js
    static methodName() {...}
    ```
* Examples
    ```js
    class A {
        static sFunc1() {
            ...
        }

        static sFunc2() {
            ...
        }
    }

    class B {
        static sFunc1() {
            super.sFunc1()
            ...
        }
    }

    var b = new B();
    B.sFunc1();
    b.sFunc1(); // error
    ```

### Arrow Function (Lambda)

* Basic Syntax
    ```js
    (param1, param2, ..., paramN) => { statements }
    (param1, param2, ..., paramN) => expression;

    // Parentheses are optional when there's only one parameter
    (singleParam) => { statements }
    singleParam = { statements }

    // A function with no parameters requires parentheses
    () => { statements }
    () => expression // equal to: () => { return expression }
    ```

* Advanced Syntax
    ```js
    // Parenthesize the body to return an object literal expression
    params => ({foo: bar})

    // Rest parameters and default parameters are supported
    (param1, param2, ... rest) => { statement }
    (param1 = defaultValue1, param2, ..., paramN = defaultValueN } = { statement
}

    // Destructuring within the parameter list is also supported
    var f = ([a, b] = [1, 2], {x: c} = {x: a+b}) => a + b + c;
    f();
    ```
* Example - shorted function
    ```js
    var color = ["red", "green", "blue"];
    var len = color.map((colors) => {
        return colors.length;
    });
    ```

* Example - No binding of this
    - Arrow function won't own **this**
    ```js
    function Person() {
        this.age = 0;

        setInterval(() => {
            this.age++; // this is Person object
        }, 1000);
    }
    ```
    - **call()** and **apply()** won't pass **this**
    ```js
    var adder = {
        base : 1,

        add1 : function(a) {
            var f = v => v + this.base;
            return f(a);
        },

        add2 : function(a) {
            var f = v => v + this.base;
            var b = { base : 2};
            return f.call(b, a);
        }
    };

    console.log(adder.add(1));
    console.log(adder.add2(1));
    ```
* Example - No binding of arguments
    - Arrow functions do not bind an **arguments** object
    ```js
    var arguments = 42;
    var arr = () => arguments;
    arr(); // 42

    function foo() {
        // foo's implicit arguments binding
        var f = (i) => arguments[0] + i;
        return f(2);
    }
    foo(1); // 3
    ```

    - Using **rest parameters to replace **arguments** object
    ```js
    function foo() {
        var f = (...args) => args[0];
        return f(2);
    }
    foo(1); // 2
    ```
* Example - used as methods
    ```js
    'use strict';
    var obj = {
        i: 10,
        b: () => console.log(this.i, this);
        c: function() {
            console.log(this.i, this);
        }
    };

    obj.b(); // prints undefined, Window
    obj.c(); // prints 10, Object {...}
    ```

    ```js
    'use strict';
    var obj = { a: 10 };
    Object.defineProperty(obj, "b", {
        get: () => {
            console.log(this.a, typeof this.a, this);
            return this.a + 10;
        }
    });

    obj.b(); // undefined a since this represents Window
    ```

* Example - Use of the **new** operator
    ```js
    var Foo = () => {};
    var foo = new Foo(): // TypeError: Foo is not a constrcutor
    ```

* Example - Use of **prototype** property
    ```js
    var Foo = () => {};
    console.log(Foo.prototpye); // undefined
    ```

* Returning Object literal
    ```js
    var func = () => ({ foo: 1 }); // Remember to wrap object in parentheses

    var func = () => { foo: 1}; // return undefined
    var func = () => { foo: function() {} }; // SyntaxError
    ```

*  Can't line breaks
    ```js
    var func = ()
                => 1; // SyntaxError: expected expression, got '=>'
    ```

* Parsing order
    ```js
    let callback;

    callback = callback || function() {}; // ok
    callback = callback || () => {}; // SyntaxError
    callback = callback || (() => {}); // ok
    ```
* Other examples
    ```js
    let empty = () => {};

    (() => "foobar")(); // return "foobar"

    var simple = a => a > 15 ? 15 : a;
    simple(16); // 15;
    simple(10); // 10

    promise.then(a => {
        // do something
    }).then(b => {
        // do others
    });
    ```
#### let

* **let** statement declares a block scope local variable, optionally
  initilizing it to a value

* Syntax
    ```js
    let var1 [=value1] [, var2 [=value2]];
    ```

* Different scope with **var**
    - **var** defines a variable globally or entire function regardless of block
      scope
    - **let** defines a variable is limited in scope to the block, statement and
      expression
    ```js
    function func() {
        var x = 1;
        let y = 1;

        if (true) {
            var x = 2;
            let y = 2;
            console.log(x); // 2
            console.log(y); // 2
        }

        console.log(x); // 2
        console.log(y); // 1;
    }
    ```
    ```js
    var a = 1;
    var b = 2;
    if (a === 1) {
        var a = 11; // global variable a
        let b = 22; // b scope is in if block

        console.log(a); // 11
        console.log(b); // 22
    }

    console.log(a); // 11
    console.log(b); // 2
    ```
- Use in **for** loop
    ```js
    for (let i = 0; i <= 5; ++i) {
        let it = ...;
    }
    ```
- Not global variable
    ```js
    var x = 'global';
    let y = 'global';
    console.log(this.x); // global
    console.log(this.y); // undefined
    ```
- Error usage
    ```js
    if (x) {
        let foo;
        let foo; // SyntaxError
    }

    function f() {
        console.log(foo);
        let foo = 2;
    }- Error usage

    switch (x) {
        case 0:
            let foo;
            break;

        case 1:
            let foo; // SyntaxError
            break;
    }

    function fn(n) {
        for (let n of n.a) { // TypeError
            console.log(n);
        }
    }
