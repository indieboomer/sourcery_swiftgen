// Generated using Sourcery 0.5.3 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable file_length
fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}

// MARK: - AutoEquatable for classes, protocols, structs

// MARK: - MyClass AutoEquatable
extension MyClass: Equatable {} 

internal func == (lhs: MyClass, rhs: MyClass) -> Bool {
    guard lhs.x == rhs.x else { return false }
    guard lhs.pi == rhs.pi else { return false }
    guard lhs.x == rhs.x else { return false }
    guard lhs.pi == rhs.pi else { return false }
    
    return true
}


// MARK: - SomeClass AutoEquatable
extension SomeClass: Equatable {} 

internal func == (lhs: SomeClass, rhs: SomeClass) -> Bool {
    guard lhs.s == rhs.s else { return false }
    guard lhs.i == rhs.i else { return false }
    guard lhs.x == rhs.x else { return false }
    guard lhs.s == rhs.s else { return false }
    guard lhs.i == rhs.i else { return false }
    guard lhs.x == rhs.x else { return false }
    
    return true
}



// MARK: - AutoEquatable for Enums


// MARK: -