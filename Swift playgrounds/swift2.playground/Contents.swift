import Cocoa

func swapTwo<T>(_ a: inout T, _ b:inout T){
    let temp:T = a
    a = b
    b = temp
}

var x = 1
var y = 2

swapTwo(&x,&y)

x
y

var v = 1.0
var z = 2.0

swapTwo(&v,&z)

v
z

swap(&v,&z)

v
z
