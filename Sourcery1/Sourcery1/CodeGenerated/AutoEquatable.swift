public protocol AutoEquatable {}

class SomeClass:AutoEquatable {
    let s = "some string"
    let i = 1
    let x = 2.0
}

class MyClass:AutoEquatable {
    var x = 10.0
    var pi = 3.14159
}

class MyOtherClass {
    
var p:MyClass = MyClass()
var q:MyClass = MyClass()

func compareMe() -> Bool {
    if( p == q ){
        return true
    }
    return false
}

}
