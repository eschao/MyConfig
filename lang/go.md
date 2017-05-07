### Variables

* Declare
```go
  var x int
  x = 1
  
  var y int = 1
  
  z := 1
  
  i, j := 1
```

* Variable will be assigned default value after declared

### Function

* Declare
```go
  // no return value
  func log(message string) {
  }
  
  // return one value
  func add(a int, b int) int {
  }
  
  // return two value
  func power(name string) (int, bool) {
  }
  
  // concise version
  func add(a, b int) int {
  }
  
  // skip one of return value
  x, _ := power("xx")
```

### Struct

* Declare
```go
  type Person struct {
    Name string
    Age int
  }
```

* Initialize 
```go
  jack := Person {
    Name: "Jack",
    Age: 60
  }
  
  anonymous := Person {}
  
  tom := Person { Name: "Tom" }
  tom.age = 20
  
  adm := Person { "Adm", 30 }
```

### Pass value or pointer
```go
  // pass value
  func AddAge1(Person p) {
    p.Age += 10
  }
  
  jack := Person {"Jack", 50}
  addAge1(jack)
  
  // pass pointer
  func AddAge2(Person *p) {
    p.Age += 10
  }
  
  tom := &Person {"Tom", 50}
  addAge2(tom)
```
