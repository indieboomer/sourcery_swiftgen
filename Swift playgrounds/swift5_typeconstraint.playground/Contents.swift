import Cocoa

func max3<T>(_ x:T, _ y:T, _ z:T) -> T where T:Comparable{
    if( x >= y ){
        if( x >= z ){
            return x
        } else {
            return z
        }
    } else {
        if( y >= z){
            return y
        } else {
            return z
        }
        
    }
}
