import Cocoa

protocol Container {
    associatedtype ItemType
    mutating func add(_ item:ItemType)
    func use(_ item:ItemType)
}

struct Beer{
    let name:String
}

struct BeerHolder:Container{
    var holder = [Beer]()
    mutating func add(_ item:Beer){
        holder.append(item)
    }
    
    func use(_ item:Beer){
        //drink
    }
}



