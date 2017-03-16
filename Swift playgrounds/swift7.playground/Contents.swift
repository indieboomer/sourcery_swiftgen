import Cocoa

struct Box<T> where T:Any{
    var somethingInside: Any
    init(_ w:T){ somethingInside = w }
}

var b = Box(2)
var c = Box<Int>(3)



