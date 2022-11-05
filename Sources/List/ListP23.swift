//
// P23: Extract a given number of random elements
//

import Foundation


public extension List {
    func randExtract(count: Int) -> List<T> {
        precondition(count > 0 && count <= length(), "Count should've been positive and atmost the length")
        return List<T>((1...count).map({ (index) -> T in at(Int.random(in: 0...length() - 1))! }))!
    }
}