//Constrained extensions

extension Array where Element:Comparable{
    func countLesserThat(_ x:Element) -> Int {
        var count = 0
        for a in self {
            if( a<x ) {
                count += 1
            }
        }
        return count
    }
}

