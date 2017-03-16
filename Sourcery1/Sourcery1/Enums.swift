//
//  Enums.swift
//  Sourcery1
//
//  Created by Pawel Bragoszewski on 11.03.2017.
//  Copyright © 2017 bragoszewski.com. All rights reserved.
//

import Foundation

public protocol AutoEquatable {}

enum FirstEnum {
    case first, second, third, fourth
}

enum Animals {
    case cat, dog, mouse, elephant, monkey, horse, wolf, fox
}

enum Devices {
    case phone, computer, tv, watch
}

enum Barcode {
    case simpleBarcode(first:Int,second:Int,third:Int,fourth:Int)
    case qrCode(code:String)
    case someOtherCode(a:String,b:Int,c:String,d:Int)
}

/// sourcery: useThis
class SomeClass:AutoEquatable {
    let s = "some string"
    let i = 1
    let x = 2.0
}

/// sourcery: useThis
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

