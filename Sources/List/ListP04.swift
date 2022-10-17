//
// P03 Find the number of elements of a list
//

import Foundation
//Recurse until the end and count the size

public extension List {
    func length(_ at: Int=1) -> Int {
         if let length = tail?.length {
             return length(at + 1)
         }
        return at
    }
}