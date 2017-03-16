import Cocoa

func swapInt(_ a: inout Int, _ b:inout Int){
    let temp:Int = a
    a = b
    b = temp
}

var x = 2
var y = 3

swapInt(&x,&y)

x
y

func swapDouble(_ a: inout Double, _ b:inout Double){
    let temp:Double = a
    a = b
    b = temp
}

var v = 1.0
var u = 2.0

swapDouble(&v,&u)

v
u


