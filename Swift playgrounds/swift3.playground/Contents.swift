import Cocoa

func swapsomething(a: inout Int, b: inout Int){
    let temp:Int = a
    a = b
    b = temp
}

var x = 1
var y = 2
swapsomething(a: &x, b: &y)

func swapsomething<T>(a: inout T, b: inout T){
    let temp:T = a
    a = b
    b = temp
}


