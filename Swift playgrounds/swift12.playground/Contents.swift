//Constrained extensions

struct Stack<T> {
    var storage = [T]()
    mutating func push(_ x:T) {
        storage.append(x)
    }
    
    mutating func pop() -> T {
        return storage.removeLast()
    }
}

extension Stack where T:Comparable{
    func contains(_ x:T) -> Bool{
        for item in storage {
            if( item == x ) {
                return true
            }
        }
        return false
    }
}

var a = Stack<Int>()

a.push(1)
a.push(2)
a.push(3)
a.push(4)
a.push(5)

a.contains(3)


