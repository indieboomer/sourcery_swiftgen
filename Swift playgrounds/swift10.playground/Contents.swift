// Extensions

struct Person {
    let firstName:String
    let secondName:String
    let yearOfBirth:Int
    init(_ first:String, _ second:String, _ year:Int) {
        firstName = first
        secondName = second
        yearOfBirth = year
    }
}

extension Person{
    func age() -> Int {
        return 2017 - yearOfBirth
    }
}

extension Person:Equatable {
    static func ==(left:Person, right:Person) -> Bool {
        return left.age() == right.age()
    }
}


let john = Person("John","Doe",1980)

john.age()

let mary = Person("Mary", "Doe", 1980)

john == mary

extension Person:Comparable {
    static func <(lhs: Person, rhs: Person) -> Bool {
        return lhs.age() < rhs.age()
    }
    
    static func <=(lhs: Person, rhs: Person) -> Bool {
        return lhs.age() <= rhs.age()
    }
    
    
    static func >=(lhs: Person, rhs: Person) -> Bool {
        return lhs.age() >= rhs.age()
    }
    
    public static func >(lhs: Person, rhs: Person) -> Bool {
        return lhs.age() > rhs.age()
    }
}

let jack = Person("jack","daniels",1950)

jack > mary
jack < john

extension Person {
    var fullName:String {
            return "\(firstName) \(secondName)"
    }
}

jack.fullName




